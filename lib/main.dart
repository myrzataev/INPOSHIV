import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:inposhiv/internal/my_app.dart';
import 'package:inposhiv/services/messaging_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/subjects.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  // Initialize services
  await setupServiceLocator();
  final _messageStreamController = BehaviorSubject<RemoteMessage>();

  await MessagingService.instance.initialize();
  RemoteMessage? initialMessage =
      await FirebaseMessaging.instance.getInitialMessage();

  // Listen for foreground messages

  // Lock screen orientation to portrait
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Initialize HydratedBloc
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // Run the app and pass the initial message
  runApp(MyApp(remoteMessage: initialMessage));
}
