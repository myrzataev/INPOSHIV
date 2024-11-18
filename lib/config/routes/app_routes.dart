import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/features/about_app/presentation/screens/about_app_screen.dart';
import 'package:inposhiv/features/about_app/presentation/screens/faq_screen.dart';
import 'package:inposhiv/features/about_app/presentation/screens/secured_deal_screen.dart';
import 'package:inposhiv/features/about_app/presentation/screens/settings_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/authorization_screen.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_model.dart';
import 'package:inposhiv/features/main/auction/data/models/customer_orders_model.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/detailed_view_screen.dart';
import 'package:inposhiv/features/main/home/data/models/manufacturers_profile_model.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/notications_screen.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/invoice_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/tracking_model.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/approve_invoice_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/detailed_tracking_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/invoice_screen_for_customer.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/order_detail_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_tracking_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/see_doc_screen.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/screens/invoice_screen.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/screens/order_details_screen_for_manufacturer.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/screens/pay_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_without_size_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/about_company_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/profile_ready_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/fifth_onboarding_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/fourth_onboarding_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/navigate_to_telegram.dart';
import 'package:inposhiv/features/auth/presentation/screens/registration_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/choose_role_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/choose_category_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/choose_fabric_type.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/custom_pick_img_from_gallery.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/image_source_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/order_ready_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_price_screen.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/screens/set_quantity_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/onboarding_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/second_onboarding_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/sms_verification_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/splash_screen.dart';
import 'package:inposhiv/features/auth/presentation/screens/start_first_deal.dart';
import 'package:inposhiv/features/survey/data/models/create_manufacturers_profile_model.dart';
import 'package:inposhiv/features/survey/presentation/screens/choose_category.dart';
import 'package:inposhiv/features/survey/presentation/screens/choose_specialization.dart';
import 'package:inposhiv/features/survey/presentation/screens/end_of_survey_screen.dart';
import 'package:inposhiv/features/survey/presentation/screens/important_things_list_screen.dart';
import 'package:inposhiv/features/survey/presentation/screens/specify_monthky_sales.dart';
import 'package:inposhiv/features/survey/presentation/screens/survey_start.dart';
import 'package:inposhiv/features/survey/presentation/screens/take_survey_screen.dart';
import 'package:inposhiv/features/survey/presentation/screens/take_surveys_form_screens.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/third_onboarding_screen.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/screens/welcome_page_screen.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/auction_screen.dart';
import 'package:inposhiv/features/main/auction/presentation/screens/see_image_full_screen.dart';
import 'package:inposhiv/features/main/chat/presentation/screens/chat_screen.dart';
import 'package:inposhiv/features/main/chat/presentation/screens/chat_tab.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/banks_list_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/detailed_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/link_credit_card_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/main_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/my_wallet_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/search_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/top_up_balance_screen.dart';
import 'package:inposhiv/features/main/home/presentation/customer/screens/user_profile_screen.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/screens/orders_screen.dart';
import 'package:inposhiv/features/tracking/presentation/screens/tracking_screen.dart';
import 'package:inposhiv/internal/bottom_navigation_bar.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation:
        //  "/",
        "/main",
    // "/registration",
    //  "/chooseImageSource",
    //  "/surveyStartScreen",
    // "/profileReady",
    // "/setQuantityWithoutSizeScreen",
    routes: [
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
        path: "/fourthOnboarding",
        name: "fourthOnboarding",
        builder: (context, state) {
          return const FourthOnboardingScreen();
        },
      ),
      GoRoute(
        path: "/fifthOnboarding",
        name: "fifthOnboarding",
        builder: (context, state) {
          return const FifthOnboardingScreen();
        },
      ),
      GoRoute(
        path: "/navigateToTelegramScreen",
        name: "navigateToTelegramScreen",
        builder: (context, state) {
          return const NavigateToTelegramScreen();
        },
      ),
      GoRoute(
        path: "/registration",
        name: "registration",
        builder: (context, state) {
          final phoneNumber = state.uri.queryParameters["number"];
          return RegistrationScreen(
            phoneNumber: phoneNumber,
          );
        },
      ),
      GoRoute(
        path: "/authorization",
        name: "authorization",
        builder: (context, state) {
          final phoneNumber = state.uri.queryParameters["number"];
          return AuthorizationScreen(
            phoneNumber: phoneNumber ?? "",
          );
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
      GoRoute(
          path: "/surveyStartScreen",
          name: "surveyStartScreen",
          builder: (context, state) {
            return const SurveyStartScreen();
          },
          routes: [
            GoRoute(
              path: "takeSurvey",
              name: "takeSurvey",
              builder: (context, state) {
                return const TakeSurveyScreen();
              },
            ),
            GoRoute(
              path: "chooseSpecializationScreen",
              name: "chooseSpecializationScreen",
              builder: (context, state) {
                return const ChooseSpecializationScreen();
              },
            ),
            GoRoute(
              path: "chooseClothCategoryScreen",
              name: "chooseClothCategoryScreen",
              builder: (context, state) {
                return const ChooseClothCategoryScreen();
              },
            ),
            GoRoute(
              path: "specifyMonthlySalesScreen",
              name: "specifyMonthlySalesScreen",
              builder: (context, state) {
                return const SpecifyMonthlySalesScreen();
              },
            ),
            GoRoute(
              path: "importantThingsListScreen",
              name: "importantThingsListScreen",
              builder: (context, state) {
                final monthSalesVolume =
                    state.uri.queryParameters["monthSalesVolume"];
                return ImportantThingsListScreen(
                  monthSalesVolume: monthSalesVolume ?? "0",
                );
              },
            ),
            GoRoute(
              path: "endOfSurveyScreen",
              name: "endOfSurveyScreen",
              builder: (context, state) {
                return const EndOfSurveyScreen();
              },
            ),
          ]),
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
          // final String retailPrice =
          //     state.uri.queryParameters["retaiPrice"] ?? "0";
          final String totalSumRuble =
              state.uri.queryParameters["totalPrice"] ?? "0";
          final String orderId = state.uri.queryParameters["orderId"] ?? "0";
          return OrderReadyScreen(
            orderId: int.tryParse(orderId) ?? 0,
            totalPriceInRuble: totalSumRuble,
          );
        },
      ),
      GoRoute(
        path: "/profileReady",
        name: "profileReady",
        builder: (context, state) {
          final model = state.extra as CreateManufacturersProfileModel?;
          return ProfileReadyScreen(
            model: model,
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
                    // bool? hasDialog = state.extra as bool? ;

                    final auctionList =
                        state.extra as List<CustomerOrdersModel>? ?? [];
                    final hasDialod = state.uri.queryParameters["hasDialod"];

                    return CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: MainScreen(
                        hasDialog: hasDialod == "true",
                        auctionsList: auctionList,
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
                        ManufacturersProfileModel model =
                            state.extra as ManufacturersProfileModel;
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
                    GoRoute(
                      path: "notifications",
                      name: "notifications",
                      parentNavigatorKey: _rootNavigatorKey,
                      builder: (context, state) {
                        return const NoticationsScreen();
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
                  GoRoute(
                    path: "detailedViewScreen",
                    name: "detailedViewScreen",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return DetailedViewScreen(
                        model: state.extra as CustomerOrdersModel,
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
                      return ChatScreen(
                        autoMessage:
                            state.uri.queryParameters["autoMessage"] ?? "",
                        orderId: state.uri.queryParameters["orderId"] ?? "",
                        receipentUuid:
                            state.uri.queryParameters["receipentUuid"] ?? "",
                        chatUuid: state.uri.queryParameters["chatUuid"] ?? "",
                      );
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
                routes: [
                  GoRoute(
                    path: "orderDetails",
                    name: "orderDetails",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return OrderDetailScreen(
                        orderId: state.uri.queryParameters["orderId"] ?? "",
                      );
                    },
                  ),
                  GoRoute(
                    path: "orderDetailsForManufacturer",
                    name: "orderDetailsForManufacturer",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return OrderDetailsScreenForManufacturer(
                        orderId: state.extra as String,
                      );
                    },
                  ),
                  GoRoute(
                    path: "invoiceScreen",
                    name: "invoiceScreen",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return InvoiceScreen(
                        orderId: state.uri.queryParameters["orderId"] ?? "",
                      );
                    },
                  ),
                  GoRoute(
                    path: "invoiceScreenForCustomer",
                    name: "invoiceScreenForCustomer",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return InvoiceScreenForCustomer(
                        model: state.extra as InvoiceModel,
                      );
                    },
                  ),
                  GoRoute(
                    path: "approveInvoice",
                    name: "approveInvoice",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return ApproveInvoiceScreen(
                        orderId: state.uri.queryParameters["orderId"] ?? "",
                      );
                    },
                  ),
                  GoRoute(
                    path: "detailedTrackingScreen",
                    name: "detailedTrackingScreen",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      final invoiceId = state.uri.queryParameters["invoiceId"];
                      return DetailedTrackingScreen(
                        invoiceUuid: invoiceId ?? "",
                      );
                    },
                  ),
                  GoRoute(
                    path: "orderTracking",
                    name: "orderTracking",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return OrdersTrackingScreen(
                        model: state.extra as TrackingModel,
                      );
                    },
                  ),
                  GoRoute(
                    path: "payScreen",
                    name: "payScreen",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return const PayScreen();
                    },
                  ),
                  GoRoute(
                    path: "seeDoc",
                    name: "seeDoc",
                    parentNavigatorKey: _rootNavigatorKey,
                    builder: (context, state) {
                      return SeeDocScreen(
                        path: state.uri.queryParameters["path"] ?? "",
                        isFromBackend: state.extra as bool,
                        documentUrl: state.uri.queryParameters["docUrl"],
                      );
                    },
                  )
                ])
          ])
        ],
      )
    ]);
