import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MessagingService {
  final preferences = locator<SharedPreferences>();

  final FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> init() async {
    messaging.requestPermission();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("onMessage: $message");
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print(message.data);
      router.go(
        "/orders/orderDetailsForManufacturer",
        extra: message.data["clickAction"]
      );
    });
    String? token = await messaging.getToken();
    preferences.setString("firebaseToken", token ?? "");
    if (kDebugMode) {
      print('Registration Token=$token');
    }
  }
}
