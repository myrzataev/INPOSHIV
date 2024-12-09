import 'dart:convert';
import 'dart:io';

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
  print("_firebaseMessagingBackgroundHandler is calling $message");
  await MessagingService.instance.setUpFlutterNotification();
  // await MessagingService.instance.showNotification(message);
  await MessagingService.instance._setupMessageHandlers();
}

class MessagingService {
  MessagingService._();
  static final MessagingService instance = MessagingService._();
  final preferences = locator<SharedPreferences>();

  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  final _localNotification = FlutterLocalNotificationsPlugin();
  bool _isFlutterLocalNotificationInitialized = false;
  Future<void> initialize() async {
    if (Platform.isAndroid) {
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
      await _requestPermission();
      await _setupMessageHandlers();
      await setUpFlutterNotification();
      String? token = await messaging.getToken();
      preferences.setString("firebaseToken", token ?? "");
      if (kDebugMode) {
        print('Registration Token=$token');
      } else {
        if (kDebugMode) {
          print('Firebase Messaging отключен для iOS');
        }
      }
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

    // Quote keys
    payload = payload.replaceAllMapped(
        RegExp(r'(\w+):'), (match) => '"${match.group(1)}":');

    // Handle double quotes around UUIDs (e.g., ""<UUID>"")
    payload = payload.replaceAllMapped(
        RegExp(r'(:\s*")"([0-9a-fA-F-]{8}-[0-9a-fA-F-]{4}-[0-9a-fA-F-]{4}-[0-9a-fA-F-]{4}-[0-9a-fA-F-]{12})"'),
        (match) => '${match.group(1)}"${match.group(2)}"');

    // Handle any unquoted strings (like names) and add double quotes around them
    payload = payload.replaceAllMapped(
        RegExp(r':\s*([^",]+)(,|\s*})'),
        (match) => ': "${match.group(1)?.replaceAll('"', '\\"')}"${match.group(2)}');

    // Fix malformed URLs (e.g., http":// -> "http://")
    payload = payload.replaceAllMapped(
        RegExp(r'(":?)http://'),
        (match) => '"http://');  // Make sure the URL is correctly quoted

    // Ensure that URLs are correctly quoted and prevent any malformed character from breaking JSON
    payload = payload.replaceAllMapped(
        RegExp(r'(:\s*)("http://[^\"]+")(,|\s*})'),
        (match) => '${match.group(1)}${match.group(2)}${match.group(3)}');

    try {
      // Parse the modified JSON string
      Map<String, dynamic> payloadData = jsonDecode(payload);
      print("click action is ${payloadData['click_action']}");

      // Navigate based on click_action
      switch (payloadData['click_action']) {
        case 'CLICK_AUCTION':
          router.go("/auction/detailedViewScreen",
              extra: payloadData["auctionUuid"]);
          break;
        case 'INVOICE_SENT':
          router.goNamed("invoiceScreenForCustomer",
              queryParameters: {"orderId": payloadData["orderId"]});
          break;
        case 'SEND_AGREEMENT':
          // Handle SEND_AGREEMENT
          break;
        case "STAGE_CHANGED":
          print(
              "stage changed invoice id ${payloadData["invoiceUuid"]}");
          router.goNamed("orderTracking", queryParameters: {
            "invoiceUid": payloadData["invoiceUuid"]
          });
          break;
        case "MESSAGE_RECEIVED":
          router.goNamed("chatScreen", queryParameters: {
            "receipentUuid": payloadData["senderUuid"],
            "chatUuid": payloadData["chatUuid"],
            "orderId": payloadData["orderId"],
            "recipientName": payloadData["recipientName"]
          });
          break;
        case "TRACKING_STAGE_ACCEPTED":
          router.goNamed(
            "orderTracking",
            pathParameters: {
              "activeStage": payloadData["invoiceUuid"] ?? "",
            },
          );
          break;
        case 'ORDER_DETAILS_FULLED':
          router.go("/orders/orderDetailsForManufacturer",
              extra: payloadData["orderUuid"]);
          break;
        case 'SEND_PAY_DETAILS':
          router.go("orderDetailsForManufacturer",
              extra: payloadData["orderUuid"]);
          print("SEND_PAY_DETAILS is catching");
          break;

        default:
          print("Unknown click_action");
          router.pushNamed("notifications");
          break;
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
    // Only setup these handlers once
    FirebaseMessaging.onMessage.listen((message) {
      print("Foreground message received: ${message.data}");
      showNotification(message); // Trigger notification
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print("App opened from notification: ${message.data}");
      _handleBackgroundMessage(message);
    });

    final initialMessage = await messaging.getInitialMessage();
    if (initialMessage != null) {
      print("Initial message received: ${initialMessage.data}");
      _handleBackgroundMessage(initialMessage);
    }
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    print("_handleBackgroundMessage method is calling and message is $message");

    if (message.data["click_action"] == "CLICK_AUCTION") {
      router.pushNamed("/auction/detailedViewScreen",
          extra: message.data["auctionUuid"]);
    } else if (message.data["click_action"] == "STAGE_CHANGED") {
      router.pushNamed("detailedTrackingScreen",
          queryParameters: {"invoiceId": message.data["invoiceUuid"]});
    } else if (message.data["click_action"] == "TRACKING_STAGE_ACCEPTED") {
      router.pushNamed("/auction/detailedViewScreen",
          extra: message.data["auctionUuid"]);
    } else if (message.data["click_action"] == "ORDER_DETAILS_FULLED") {
      router.pushNamed("orderDetailsForManufacturer",
          extra: message.data["orderUuid"]);
    } else if (message.data["click_action"] == "INVOICE_SENT") {
      router.pushNamed("invoiceScreenForCustomer",
          queryParameters: {"orderId": message.data["orderId"]});
    } else {
      router.pushNamed("notifications");
    }
  }

  // void _handleBackgroundMessage(RemoteMessage message) {
  //   print("_handleBackgroundMessage method is calling and message is $message");

  //   if (message.data["click_action"] == "CLICK_AUCTION") {
  //     router.go("/auction/detailedViewScreen",
  //         extra: message.data["auctionUuid"]);
  //   } else if (message.data["click_action"] == "STAGE_CHANGED") {
  //     router.goNamed("detailedTrackingScreen",
  //         queryParameters: {"invoiceId": message.data["invoiceUuid"]});
  //   } else if (message.data["click_action"] == "TRACKING_STAGE_ACCEPTED") {
  //     router.go("/auction/detailedViewScreen",
  //         extra: message.data["auctionUuid"]);
  //   } else if (message.data["click_action"] == "ORDER_DETAILS_FULLED") {
  //     router.go("orderDetailsForManufacturer",
  //         extra: message.data["orderUuid"]);
  //   } else if (message.data["click_action"] == "INVOICE_SENT") {
  //     router.goNamed("invoiceScreenForCustomer",
  //         queryParameters: {"orderId": message.data["orderId"]});
  //   } else {
  //     router.goNamed("notifications");
  //   }
  // }
}

// import 'dart:convert';
// import 'dart:io';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:inposhiv/config/routes/app_routes.dart';
// import 'package:inposhiv/services/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// @pragma("vm:entry-point")
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   await setupServiceLocator();

//   if (kDebugMode) {
//     print("_firebaseMessagingBackgroundHandler is calling $message");
//   }
//   await MessagingService.instance.setUpFlutterNotification();
//   await MessagingService.instance.showNotification(message);
//   await MessagingService.instance._setupMessageHandlers();
// }

// class MessagingService {
//   MessagingService._();
//   static final MessagingService instance = MessagingService._();
//   final preferences = locator<SharedPreferences>();

//   final FirebaseMessaging messaging = FirebaseMessaging.instance;
//   final _localNotification = FlutterLocalNotificationsPlugin();
//   bool _isFlutterLocalNotificationInitialized = false;

//   Future<void> initialize() async {
//     if (Platform.isAndroid) {
//       FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//       await _requestPermission();
//       await _setupMessageHandlers();
//       await setUpFlutterNotification();
//       String? token = await messaging.getToken();
//       preferences.setString("firebaseToken", token ?? "");
//       if (kDebugMode) {
//         print('Registration Token=$token');
//       }
//     }
//   }

//   Future<void> _requestPermission() async {
//     messaging.requestPermission(
//         alert: true,
//         badge: true,
//         sound: true,
//         provisional: false,
//         announcement: false,
//         carPlay: false,
//         criticalAlert: false);
//     messaging.setForegroundNotificationPresentationOptions(
//       alert: true, // Required to display a heads-up notification
//       badge: true,
//       sound: true,
//     );
//   }

//   setUpFlutterNotification() async {
//     if (_isFlutterLocalNotificationInitialized) {
//       return;
//     }
//     const channel = AndroidNotificationChannel(
//         "high_importance_channel", "High Importance Notifications",
//         description: "This channel is used for important notifications",
//         importance: Importance.high);
//     await _localNotification
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//     const initializationSettingsAndroid =
//         AndroidInitializationSettings("@mipmap/ic_launcher");
//     final initializationSettingsDarwin = DarwinInitializationSettings();
//     final initializationSettings = InitializationSettings(
//         android: initializationSettingsAndroid, iOS: initializationSettingsDarwin);
//     await _localNotification.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse details) {
//         _handleNotificationResponse(details);
//       },
//     );
//     _isFlutterLocalNotificationInitialized = true;
//   }

//   void _handleNotificationResponse(NotificationResponse details) {
//     if (details.payload != null) {
//       String payload = details.payload!;

//       // Преобразование строки в корректный JSON
//       payload = _quoteJson(payload);

//       try {
//         Map<String, dynamic> payloadData = jsonDecode(payload);
//         _navigateBasedOnClickAction(payloadData);
//       } catch (e) {
//         print("Error parsing payload: $e");
//       }
//     }
//   }

//   String _quoteJson(String payload) {
//     payload = payload.replaceAllMapped(
//         RegExp(r'(\w+):'), (match) => '"${match.group(1)}":');
//     payload = payload.replaceAllMapped(
//         RegExp(r':\s*([a-zA-Z0-9_]+)(,|\s*})'),
//         (match) => ': "${match.group(1)}"${match.group(2)}');
//     return payload;
//   }

//   void _navigateBasedOnClickAction(Map<String, dynamic> payloadData) {
//     switch (payloadData['click_action']) {
//       case 'CLICK_AUCTION':
//         router.go("/auction/detailedViewScreen", extra: payloadData["auctionUuid"]);
//         break;
//       case 'INVOICE_SENT':
//         router.goNamed("invoiceScreenForCustomer", queryParameters: {"orderId": payloadData["orderId"]});
//         break;
//       case 'SEND_AGREEMENT':
//         // Handle SEND_AGREEMENT
//         break;
//       case "STAGE_CHANGED":
//         router.goNamed("detailedTrackingScreen", queryParameters: {
//           "invoiceId": payloadData["invoiceUuid"]
//         });
//         break;
//       case "ORDER_DETAILS_FULLED":
//         router.go("/orders/orderDetailsForManufacturer", extra: payloadData["orderUuid"]);
//         break;
//       default:
//         print("Unknown click_action");
//         break;
//     }
//   }

//   showNotification(RemoteMessage remoteMessage) async {
//     RemoteNotification? remoteNotification = remoteMessage.notification;
//     AndroidNotification? android = remoteMessage.notification?.android;

//     if (remoteNotification != null && android != null) {
//       await _localNotification.show(
//         remoteNotification.hashCode,
//         remoteNotification.title,
//         remoteNotification.body,
//         const NotificationDetails(
//           android: AndroidNotificationDetails(
//             "high_importance_channel", "High Importance Notifications",
//             channelDescription: "This channel is used for important notifications",
//             importance: Importance.high,
//             icon: "@mipmap/ic_launcher"),
//           iOS: DarwinNotificationDetails(
//             presentAlert: true,
//             presentBadge: true,
//             presentSound: true,
//           ),
//         ),
//         payload: remoteMessage.data.toString(),
//       );
//     }
//   }

//   Future<void> _setupMessageHandlers() async {
//     // Обработка сообщений, когда приложение активно или в фоне
//     FirebaseMessaging.onMessage.listen((message) {
//       showNotification(message);
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);

//     // Когда приложение открывается после клика по уведомлению
//     final initialMessage = await messaging.getInitialMessage();
//     if (initialMessage != null) {
//     print("initial message is $initialMessage");
//       _handleMessageOpenedApp(initialMessage);
//     }
//   }

//   void _handleMessageOpenedApp(RemoteMessage message) {
//     print("App opened from notification: $message");

//     // Обрабатываем клик по уведомлению и направляем на соответствующую страницу
//     if (message.data["click_action"] == "CLICK_AUCTION") {
//       router.go("/auction/detailedViewScreen", extra: message.data["auctionUuid"]);
//     } else if (message.data["click_action"] == "STAGE_CHANGED") {
//       router.goNamed("detailedTrackingScreen", queryParameters: {"invoiceId": message.data["invoiceUuid"]});
//     } else if (message.data["click_action"] == "ORDER_DETAILS_FULLED") {
//       router.go("/orders/orderDetailsForManufacturer", extra: message.data["orderUuid"]);
//     } else if (message.data["click_action"] == "INVOICE_SENT") {
//       router.goNamed("invoiceScreenForCustomer", queryParameters: {"orderId": message.data["orderId"]});
//     }
//   }
// }
