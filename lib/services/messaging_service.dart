import 'dart:convert';

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
  await setupServiceLocator();

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
    await setUpFlutterNotification();
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
        onDidReceiveNotificationResponse: (NotificationResponse details) {
          print("onDidReceiveNotificationResponse method is calling");
          print("notification response ${details.payload}");
          print("notification response ${details.notificationResponseType}");
          print("notification response ${details.id}");
          if (details.payload != null) {
            String payload = details.payload!;

            // Ensure the payload is in a valid JSON format by adding quotes around the keys and string values
            payload = payload.replaceAllMapped(RegExp(r'(\w+):'),
                (match) => '"${match.group(1)}":'); // Wrap keys with quotes

            // Add double quotes around values that are UUIDs or other string-like values
            payload = payload.replaceAllMapped(
                RegExp(r'(\w{8}-\w{4}-\w{4}-\w{4}-\w{12})'),
                (match) => '"${match.group(1)}"');
            payload = payload.replaceAllMapped(
                RegExp(r': (\w+)'),
                (match) =>
                    ': "${match.group(1)}"'); // Add quotes around values that are not already quoted

            try {
              // Decode the modified payload string
              Map<String, dynamic> payloadData = jsonDecode(payload);
              print("click action is ${payloadData['click_action']}");
              // Check the value of click_action and navigate accordingly
              switch (payloadData['click_action']) {
                case 'CLICK_AUCTION':
                  router.go("/auction/detailedViewScreen",
                      extra: payloadData["auctionUuid"]);
                  break;
                case 'INVOICE_SENT':
                  // Handle INVOICE_SENT case
                  break;
                case 'SEND_AGREEMENT':
                  // Handle SEND_AGREEMENT case
                  break;
                case "STAGE_CHANGED":
                  router.goNamed("detailedTrackingScreen", queryParameters: {
                    "invoiceId": payloadData["invoiceUuid"]
                  });
                case "TRACKING_STAGE_ACCEPTED":
                  router.goNamed("detailedTrackingScreen", queryParameters: {
                    "invoiceId": payloadData["invoiceUuid"]
                  });
                case 'ORDER_DETAILS_FULLED':
                  // Handle ORDER_DETAILS_FULLED case
                  break;
                case 'SEND_PAY_DETAILS':
                  // Handle SEND_PAY_DETAILS case
                  break;

                default:
                  // Handle unknown click_action or fallback case
                  print("Unknown click_action");
              }
            } catch (e) {
              // Handle JSON decoding errors
              print("Error parsing payload: $e");
            }
          } else {
            print("Payload is null");
          }
        },
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
          const NotificationDetails(
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
    print("_handleBackgroundMessage method is calling and message is $message");

    if (message.data["click_action"] == "CLICK_AUCTION") {
      router.go("/auction/detailedViewScreen",
          extra: message.data["auctionUuid"]);
    } else if (message.data["click_action"] == "STAGE_CHANGED") {
      router.goNamed("detailedTrackingScreen",
          queryParameters: {"invoiceId": message.data["invoiceUuid"]});
    } else if (message.data["click_action"] == "TRACKING_STAGE_ACCEPTED") {
      router.go("/auction/detailedViewScreen",
          extra: message.data["auctionUuid"]);
    }
  }
}
