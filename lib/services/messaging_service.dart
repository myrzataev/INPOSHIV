import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class MessagingService {
  final FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> init() async {
    messaging.requestPermission();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("onMessage: $message");
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("onMessageOpenedApp: $message");
    });
    String? token = await messaging.getToken();
    if (kDebugMode) {
      print('Registration Token=$token');
    }
  }
}
