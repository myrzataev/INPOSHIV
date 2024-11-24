import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

@pragma("vm:entry-point")
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  if (kDebugMode) {}
  await MessagingService.instance.setUpFlutterNotification();
  await MessagingService.instance.showNotification(message);
}

class MessagingService {
  MessagingService._();
  static final MessagingService instance = MessagingService._();
  final preferences = locator<SharedPreferences>();

  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  final _localNotification = FlutterLocalNotificationsPlugin();
  bool _isFlutterLocalNotificationInitialized = false;
  Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await _requestPermission();
    await _setupMessageHandlers();
    String? token = await messaging.getToken();
    preferences.setString("firebaseToken", token ?? "");
    if (kDebugMode) {
      print('Registration Token=$token');
    }
  }

  Future<void> _requestPermission() async {
    messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        provisional: false,
        announcement: false,
        carPlay: false,
        criticalAlert: false);
    messaging.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   showNotification(message);
    // });

    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print("app is opened frome terminated ${message.data}");
    //   if (message.data["click_action"] == "CLICK_AUCTION") {
    //     router.go("/auction/detailedViewScreen",
    //         extra: message.data["auctionUuid"]);
    //     // router.go("/orders/orderDetails
    //   }
    // });
  }

  setUpFlutterNotification() async {
    if (_isFlutterLocalNotificationInitialized) {
      return;
    } else {
      const channel = AndroidNotificationChannel(
          "high_importance_channel", "High Importance Notifications",
          description: "This channel is used for important notifications",
          importance: Importance.high);
      await _localNotification
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
      const initializationSettingsAndroid =
          AndroidInitializationSettings("@mipmap/ic_launcher");
      final initializationSettingsDarwin = DarwinInitializationSettings();
      final initializationSettings = InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin);
      await _localNotification.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (details) {},
      );
      _isFlutterLocalNotificationInitialized = true;
    }
  }

  showNotification(RemoteMessage remoteMessage) async {
    RemoteNotification? remoteNotification = remoteMessage.notification;
    AndroidNotification? android = remoteMessage.notification?.android;
    if (remoteNotification != null && android != null) {
      await _localNotification.show(
          remoteNotification.hashCode,
          remoteNotification.title,
          remoteNotification.body,
          NotificationDetails(
              android: AndroidNotificationDetails(
                  "high_importance_channel", "High Importance Notifications",
                  channelDescription:
                      "This channel is used for important notifications",
                  importance: Importance.high,
                  icon: "@mipmap/ic_launcher"),
              iOS: const DarwinNotificationDetails(
                presentAlert: true,
                presentBadge: true,
                presentSound: true,
              )),
          payload: remoteMessage.data.toString());
    }
  }

  Future<void> _setupMessageHandlers() async {
    //foreground messages
    FirebaseMessaging.onMessage.listen((message) {
      showNotification(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
    //when app is opened
    final initialMessage = await messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleBackgroundMessage(initialMessage);
    }
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    if (message.data["type"] == "chat") {}
  }
}
