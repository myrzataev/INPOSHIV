import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Simulate splash delay
    await Future.delayed(const Duration(seconds: 3));

    // Check if the app was launched from a notification
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      // Handle notification and navigate
      _handleBackgroundMessage(initialMessage);
    } else {
      // Normal logic to navigate to main or onboarding
      final preferences = locator<SharedPreferences>();
      bool isAuthorized = preferences.getString("userId") != null;
      _navigateToNextScreen(isAuthorized);
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

  void _navigateToNextScreen(bool isAuthorized) {
    // If the user is authorized, navigate to the main screen, otherwise to onboarding
    router.pushReplacementNamed(isAuthorized ? "main" : "onBoarding");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: AppColors.buttonGreenColor,
        onInit: () {
          // Initialize logic (if any)
        },
        onEnd: () {
          // This will not be necessary now since we handle navigation in initState
        },
        childWidget: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                Images.logo,
                height: 125.h,
                width: 285.w,
              ),
            ],
          ),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
      ),
    );
  }
}
