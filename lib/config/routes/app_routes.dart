import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/features/auth/presentation/screens/choose_role_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/choose_category_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/choose_fabric_type.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/custom_pick_img_from_gallery.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/image_source_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/set_price_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/second_onboarding_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/splash_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/start_first_deal.dart';
import 'package:inposhiv/features/auth/presentation/screens/take_survey_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/take_surveys_form_screens.dart';
import 'package:inposhiv/features/auth/presentation/screens/third_onboarding_screen.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/auction_screen.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/see_image_full_screen.dart';
import 'package:inposhiv/features/main/chat/presentation/screens/chat_tab.dart';
import 'package:inposhiv/features/main/home/data/mocked_data.dart';
import 'package:inposhiv/features/main/home/presentation/screens/detailed_screen.dart';
import 'package:inposhiv/features/main/home/presentation/screens/main_screen.dart';
import 'package:inposhiv/features/main/home/presentation/screens/search_screen.dart';
import 'package:inposhiv/features/main/orders/presentation/screens/orders_screen.dart';
import 'package:inposhiv/internal/bottom_navigation_bar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final GoRouter router =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: "/", routes: [
      
  GoRoute(
    path: "/s",
    name: "splashScreen",
    builder: (context, state) {
      return const SplashScreen();
    },
  ),
  GoRoute(
    path: "/onBoarding",
    name: "onBoarding",
    builder: (context, state) {
      return const OnboardingScreen();
    },
  ),
  GoRoute(
    path: "/secondOnboarding",
    name: "secondOnBoarding",
    builder: (context, state) {
      return const SecondOnboardingScreen();
    },
  ),
  GoRoute(
    path: "/thirdOnBoarding",
    name: "thirdOnBoarding",
    builder: (context, state) {
      return const ThirdOnboardingScreen();
    },
  ),
  GoRoute(
    path: "/chooseRole",
    name: "chooseRole",
    builder: (context, state) {
      return const ChooseRoleScreen();
    },
  ),
  GoRoute(
    path: "/takeSurvey",
    name: "takeSurvey",
    builder: (context, state) {
      return const TakeSurveyScreen();
    },
  ),
  GoRoute(
    path: "/takeSurveysForm",
    name: "takeSurveysForm",
    builder: (context, state) {
      return const TakeSurveysFormScreens();
    },
  ),
  GoRoute(
    path: "/startFirstDeal",
    name: "startFirstDeal",
    builder: (context, state) {
      return const StartFirstDeal();
    },
  ),
  GoRoute(
    path: "/chooseImageSource",
    name: "chooseImageSource",
    builder: (context, state) {
      return const ChooseImageSourceScreen();
    },
  ),
  GoRoute(
    path: "/customImagePickScreen",
    name: "customImagePickScreen",
    builder: (context, state) {
      return const CustomImagePickerScreen();
    },
  ),
  GoRoute(
    path: "/chooseCategory",
    name: "chooseCategory",
    builder: (context, state) {
      return const ChooseCategoryScreen();
    },
  ),
  GoRoute(
    path: "/chooseFabricType",
    name: "chooseFabricType",
    builder: (context, state) {
      return const ChooseFabricTypeScreen();
    },
  ),
  GoRoute(
    path: "/setQuantityScreen",
    name: "setQuantityScreen",
    builder: (context, state) {
      return const SetQuantityScreen();
    },
  ),
  GoRoute(
    path: "/setPriceScreen",
    name: "setPriceScreen",
    builder: (context, state) {
      final String quantityOfGoods =
          state.uri.queryParameters["quantity"] ?? "0";
      return SetPriceScreen(
        quantityOfGoods: quantityOfGoods,
      );
    },
  ),
  ShellRoute(
  navigatorKey: _shellNavigatorKey,
  builder: (context, state, child) {
    return AppBottomNavigationBar(child: child);
  },
  routes: [
    GoRoute(
      path: "/",
      name: "main",
      parentNavigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: MainScreen(
            isFromSearch: state.uri.queryParameters["isFromSearch"] == "true",
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // No transition
            return child;
          },
        );
      },
      routes: [
        GoRoute(
          path: "detailed",
          name: "detailed",
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            CardsModel model = state.extra as CardsModel;
            return DetailedScreen(model: model);
          },
        ),
        GoRoute(
          path: "searchScreen",
          name: "searchScreen",
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) {
            return const SearchScreen();
          },
        ),
      ],
    ),
    GoRoute(
      path: "/auction",
      name: "auction",
      parentNavigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: const AuctionScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // No transition
            return child;
          },
        );
      },
      routes: [
        GoRoute(
          path: "seeImage",
          name: "seeImage",
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            List<String> imagesList = state.extra as List<String>;
            return SeeImageFullScreen(imagesList: imagesList);
          },
        ),
      ],
    ),
    GoRoute(
      path: "/chat",
      name: "chat",
      parentNavigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: const ChatTab(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // No transition
            return child;
          },
        );
      },
    ),
    GoRoute(
      path: "/orders",
      name: "orders",
      parentNavigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: const OrdersScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // No transition
            return child;
          },
        );
      },
    ),
  ],
)

]);
