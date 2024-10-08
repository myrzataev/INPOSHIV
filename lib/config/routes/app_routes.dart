import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/features/about_app/presentation/screens/about_app_screen.dart';
import 'package:inposhiv/features/about_app/presentation/screens/faq_screen.dart';
import 'package:inposhiv/features/about_app/presentation/screens/secured_deal_screen.dart';
import 'package:inposhiv/features/about_app/presentation/screens/settings_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/authorization_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/set_quantity_without_size_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/customer/about_company_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/customer/profile_ready_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/registration_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/choose_role_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/choose_category_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/choose_fabric_type.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/custom_pick_img_from_gallery.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/image_source_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/order_ready_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/set_price_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/create_auction/creator/set_quantity_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/onboarding_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/second_onboarding_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/sms_verification_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/splash_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/start_first_deal.dart';
import 'package:inposhiv/features/auth/presentation/screens/take_surveys_form_screens.dart';
import 'package:inposhiv/features/auth/presentation/screens/third_onboarding_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/welcome_page_screen.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/auction_screen.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/see_image_full_screen.dart';
import 'package:inposhiv/features/main/chat/presentation/screens/chat_screen.dart';
import 'package:inposhiv/features/main/chat/presentation/screens/chat_tab.dart';
import 'package:inposhiv/features/main/home/data/mocked_data.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/banks_list_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/detailed_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/link_credit_card_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/main_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/my_wallet_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/search_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/top_up_balance_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/user_profile_screen.dart';
import 'package:inposhiv/features/main/orders/presentation/screens/orders_screen.dart';
import 'package:inposhiv/internal/bottom_navigation_bar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: "/main", routes: [
  GoRoute(
    path: "/",
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
    path: "/registration",
    name: "registration",
    builder: (context, state) {
      return const RegistrationScreen();
    },
  ),
  GoRoute(
    path: "/authorization",
    name: "authorization",
    builder: (context, state) {
      return const AuthorizationScreen();
    },
  ),
  GoRoute(
    path: "/welcomScreen",
    name: "welcomScreen",
    builder: (context, state) {
      return const WelcomePageScreen();
    },
  ),
  GoRoute(
    path: "/verification",
    name: "verification",
    builder: (context, state) {
      return const SmsVerificationScreen();
    },
  ),
  GoRoute(
    path: "/chooseRole",
    name: "chooseRole",
    builder: (context, state) {
      return const ChooseRoleScreen();
    },
  ),
  // GoRoute(
  //   path: "/takeSurvey",
  //   name: "takeSurvey",
  //   builder: (context, state) {
  //     return const TakeSurveyScreen();
  //   },
  // ),
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
    path: "/aboutCompany",
    name: "aboutCompany",
    builder: (context, state) {
      return const AboutCompanyScreen();
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
    path: "/setQuantityWithoutSizeScreen",
    name: "setQuantityWithoutSizeScreen",
    builder: (context, state) {
      return const SetQuantityWithoutSizeScreen();
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
  GoRoute(
    path: "/orderReady",
    name: "orderReady",
    builder: (context, state) {
      final String retailPrice = state.uri.queryParameters["retaiPrice"] ?? "0";
      final String totalSumRuble =
          state.uri.queryParameters["totalPrice"] ?? "0";

      return OrderReadyScreen(
        retailPrice: retailPrice,
        totalPriceInRuble: totalSumRuble,
      );
    },
  ),
  GoRoute(
    path: "/profileReady",
    name: "profileReady",
    builder: (context, state) {
      final description = state.uri.queryParameters["description"];
      return ProfileReadyScreen(
        descriptionOfCompany: description ?? "",
      );
    },
  ),
  StatefulShellRoute.indexedStack(
    // navigatorKey: _shellNavigatorKey,
    builder: (context, state, child) {
      return PageStorage(
          bucket: PageStorageBucket(),
          child: AppBottomNavigationBar(child: child));
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
              path: "/main",
              name: "main",
              // parentNavigatorKey: _shellNavigatorKey,
              pageBuilder: (context, state) {
                bool? hasDialog = state.extra as bool?;
                return CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: MainScreen(
                    hasDialog: hasDialog,
                    isFromSearch:
                        state.uri.queryParameters["isFromSearch"] == "true",
                  ),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
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
                  // parentNavigatorKey: _shellNavigatorKey,
                  builder: (context, state) {
                    return const SearchScreen();
                  },
                ),
                GoRoute(
                  path: "profileScreen",
                  name: "profileScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const UserProfileScreen();
                  },
                ),
                GoRoute(
                  path: "walletScreen",
                  name: "walletScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const MyWalletScreen();
                  },
                ),
                GoRoute(
                  path: "banksScreen",
                  name: "banksScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const BanksListScreen();
                  },
                ),
                GoRoute(
                  path: "topUpBalanceScreen",
                  name: "topUpBalanceScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const TopUpBalanceScreen();
                  },
                ),
                GoRoute(
                  path: "linkCreditCardScreen",
                  name: "linkCreditCardScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const LinkCreditCardScreen();
                  },
                ),
                GoRoute(
                  path: "aboutAppScreen",
                  name: "aboutAppScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const AboutAppScreen();
                  },
                ),
                GoRoute(
                  path: "securedDealScreen",
                  name: "securedDealScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const SecuredDealScreen();
                  },
                ),
                GoRoute(
                  path: "faqScreen",
                  name: "faqScreen",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const FaqScreen();
                  },
                ),
                GoRoute(
                  path: "settings",
                  name: "settings",
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const SettingsScreen();
                  },
                ),
              ])
        ],
      ),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/auction",
            name: "auction",
            // parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return CustomTransitionPage<void>(
                key: state.pageKey,
                child: const AuctionScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
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
                  final index = state.uri.queryParameters["index"];
                  return SeeImageFullScreen(
                    imagesList: imagesList,
                    index: (int.tryParse(index ?? "0") ?? 0),
                  );
                },
              ),
            ])
      ]),
      StatefulShellBranch(routes: [
        GoRoute(
            path: "/chat",
            name: "chat",
            // parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) {
              return CustomTransitionPage<void>(
                key: state.pageKey,
                child: const ChatTab(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  // No transition
                  return child;
                },
              );
            },
            routes: [
              GoRoute(
                path: "chatScreen",
                name: "chatScreen",
                parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) {
                  return const ChatScreen();
                },
              )
            ]),
      ]),
      StatefulShellBranch(routes: [
        GoRoute(
          path: "/orders",
          name: "orders",
          // parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: const OrdersScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                // No transition
                return child;
              },
            );
          },
        )
      ])
    ],
  )
]);
