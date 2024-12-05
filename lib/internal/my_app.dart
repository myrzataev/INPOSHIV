import 'dart:async';
import 'dart:io';
import 'package:app_links/app_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/network/dio_settings.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/features/auth/data/data_sources/auth_ds.dart';
import 'package:inposhiv/features/auth/data/data_sources/login_ds.dart';
import 'package:inposhiv/features/auth/data/repositories/auth_repo.dart';
import 'package:inposhiv/features/auth/data/repositories/loginrepo_impl.dart';
import 'package:inposhiv/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:inposhiv/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:inposhiv/features/auth/presentation/providers/photo_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/role_provider.dart';
import 'package:inposhiv/features/auth/presentation/providers/size_provider.dart';
import 'package:inposhiv/features/main/auction/data/data_source/create_auction_ds.dart';
import 'package:inposhiv/features/main/auction/data/data_source/get_auction_members_ds.dart';
import 'package:inposhiv/features/main/auction/data/data_source/get_auctions_list_ds.dart';
import 'package:inposhiv/features/main/auction/data/data_source/get_customers_orders_ds.dart';
import 'package:inposhiv/features/main/auction/data/data_source/get_detailed_auction_info_ds.dart';
import 'package:inposhiv/features/main/auction/data/data_source/get_manufacturer_auctions_ds.dart';
import 'package:inposhiv/features/main/auction/data/data_source/make_bid_ds.dart';
import 'package:inposhiv/features/main/auction/data/repositories/auction_repo_impl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auction_members_repoimpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auctions_list_repoimmpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_customer_orders_repoimpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_detailed_auction_info_repoimpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_manufacturer_auctions_repoimpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/make_bid_repoimpl.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/auction_bloc/auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/create_auction_bloc/create_auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/customer_auctions_bloc/customer_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auction_members_bloc/get_auction_members_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auctions_bloc/get_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_detailed_auction_info_bloc/get_detailed_auction_info_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/manufacturer_auctions_bloc/manufacturer_auctions_bloc.dart';
import 'package:inposhiv/features/main/chat/data/data_source/create_chatroom_ds.dart';
import 'package:inposhiv/features/main/chat/data/data_source/get_chatroom_history_ds.dart';
import 'package:inposhiv/features/main/chat/data/data_source/get_chats_ds.dart';
import 'package:inposhiv/features/main/chat/data/data_source/send_message_ds.dart';
import 'package:inposhiv/features/main/chat/data/repositories/create_chat_repoimpl.dart';
import 'package:inposhiv/features/main/chat/data/repositories/get_chat_rooms_history_repoimpl.dart';
import 'package:inposhiv/features/main/chat/data/repositories/get_chats_repoimpl.dart';
import 'package:inposhiv/features/main/chat/data/repositories/send_message_repoimpl.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_bloc/chat_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_rooms_bloc/chat_rooms_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/create_chat_room_bloc/create_chat_room_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/providers/chat_provider.dart';
import 'package:inposhiv/features/main/home/data/data_source/user_account_ds.dart';
import 'package:inposhiv/features/main/home/data/data_source/get_manufacturers_ds.dart';
import 'package:inposhiv/features/main/home/data/data_source/get_notification_history_ds.dart';
import 'package:inposhiv/features/main/home/data/data_source/get_user_info_ds.dart';
import 'package:inposhiv/features/main/home/data/repositories/change_password_repoimmpl.dart';
import 'package:inposhiv/features/main/home/data/repositories/delete_account_repoimpl.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_manufacturers_repoimpl.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_notification_history_repoimpl.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_user_info_repoimpl.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/get_manufacturers_profile_bloc/get_manufacturers_profile_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/user_bloc/user_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/blocs/change_password_bloc/change_password_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/shared/blocs/notification_history_bloc/notification_history_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/confirm_tracking_stage_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/get_customer_invoices_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/get_customers_completed_orders_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/order_tracking_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/review_for_manufacturer_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/search_order_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/send_invoice_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/send_order_details_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/confirm_tracking_stage_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/get_customer_invoices_repoimp.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/get_customers_completed_orders_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/order_tracking_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/review_for_manufacturer_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/search_order_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_invoice_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_order_details_repo_impl.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/confirm_tracking_stage_bloc/confirm_tracking_stage_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/customers_completed_orders_bloc/customers_completed_orders_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/get_invoice_details_bloc/get_invoice_details_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/order_tracking_bloc/order_tracking_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/search_order_bloc/search_order_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/send_feed_back_bloc/send_feed_back_bloc_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/data_sources/get_manufacturer_invoices_ds.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/data_sources/get_manufacturers_completed_orders_ds.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/data_sources/get_order_detail_ds.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_manufacturer_completed_orders_repoimpl.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_manufacturer_invoices_repoimpl.dart';
import 'package:inposhiv/features/main/orders/manufacturer/data/repositories/get_order_details_repoimpl.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/get_manufacturer_invoices_bloc/get_manufacturer_invoices_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/get_order_details_bloc/get_order_details_bloc.dart';
import 'package:inposhiv/features/main/orders/manufacturer/presentation/blocs/manufacturer_completed_orders_bloc/manufacturer_completed_orders_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/create_order_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_currency_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_fabric_types_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_sizes_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/create_order_repo_impl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_current_currency_impl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_fabric_types_repoimpl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_sizes_repoimpl.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/current_currency_bloc/current_currency_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/get_fabric_types_bloc/get_fabric_types_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/data_source/create_manufacturer_profile_ds.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/repositories/create_manufacturer_profile_repoimpl.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/blocs/manufacturer_bloc/manufacturer_bloc.dart';
import 'package:inposhiv/features/survey/data/data_source/get_categories_ds.dart';
import 'package:inposhiv/features/survey/data/data_source/get_job_priorities_ds.dart';
import 'package:inposhiv/features/survey/data/data_source/send_custome_survey_ds.dart';
import 'package:inposhiv/features/survey/data/data_source/send_manufacturer_survey_ds.dart';
import 'package:inposhiv/features/survey/data/repositories/get_categories_repo_impl.dart';
import 'package:inposhiv/features/survey/data/repositories/get_job_prioritities_list_repoimpl.dart';
import 'package:inposhiv/features/survey/data/repositories/send_customer_survey_repo_impl.dart';
import 'package:inposhiv/features/survey/data/repositories/send_manufacturer_survey_repoimpl.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_categories_bloc/get_categories_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_job_priorities_bloc/get_job_priorities_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_sub_categories_bloc/get_sub_categories_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/send_customer_survey_data_bloc/send_customer_survey_data_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/send_manufacturers_survey_bloc/send_manufacturers_survey_bloc.dart';
import 'package:inposhiv/features/survey/presentation/providers/categories_provider.dart';
import 'package:inposhiv/features/survey/presentation/providers/priorities_provider.dart';
import 'package:inposhiv/services/keyboard_unfocuser.dart';
import 'package:inposhiv/services/messaging_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  final Uri? initialLink;
  final RemoteMessage? remoteMessage;
  const MyApp({super.key, this.initialLink, this.remoteMessage});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppLinks _appLinks;
  StreamSubscription<String>? _linkSubscription;
  final messagingService = MessagingService.instance;

  @override
  void initState() {
    // messagingService.init();
    super.initState();
    // Handle initial link, if any
    if (widget.initialLink != null) {
      _navigateBasedOnLink(widget.initialLink!);
    }
    if (widget.remoteMessage != null) {
      _navigateBasedOnNotification(widget.remoteMessage!);
    }
    _initDeepLinks();
  }

  Future<void> _initDeepLinks() async {
    _appLinks = AppLinks();
    _linkSubscription = _appLinks.stringLinkStream.listen((url) {
      if (url.isNotEmpty) {
        final uri = Uri.parse(url);
        _navigateBasedOnLink(uri);
      }
    });
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  // void _handleIncomingLinks() async {

  //   // _sub = uriLinkStream.listen((Uri? link) {
  //   //   if (link != null) {
  //   //     _navigateBasedOnLink(link);
  //   //   }
  //   // }, onError: (err) {});
  // }

  void _navigateBasedOnLink(Uri link) {
    final path = link.path;
    final queryParameters = link.queryParameters;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        try {
          if (path.contains("registration")) {
            router.goNamed("registration", queryParameters: queryParameters);
          } else if (path.contains("main")) {
            router.goNamed("main", queryParameters: {"isFromSearch": "false"});
          } else {
            router.go("/");
          }
        } catch (e) {
          debugPrint(e.toString());
        }
      }
    });
  }

  void _navigateBasedOnNotification(RemoteMessage message) {
    final data = message.data;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        try {
          _handleBackgroundMessage(message);
        } catch (e) {
          debugPrint(e.toString());
        }
      }
    });
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    print("_handleBackgroundMessage method is calling and message is $message");

    if (message.data["click_action"] == "CLICK_AUCTION") {
      router.go("/auction/detailedViewScreen",
          extra: message.data["auctionUuid"]);
    } else if (message.data["click_action"] == "STAGE_CHANGED") {
      router.goNamed("orderTracking",
          queryParameters: {"invoiceUid": message.data["invoiceUuid"]});
    } else if (message.data["click_action"] == "TRACKING_STAGE_ACCEPTED") {
      router.go("/auction/detailedViewScreen",
          extra: message.data["auctionUuid"]);
    } else if (message.data["click_action"] == "ORDER_DETAILS_FULLED") {
      router.go("orderDetailsForManufacturer",
          extra: message.data["orderUuid"]);
    } else if (message.data["click_action"] == "INVOICE_SENT") {
      router.goNamed("invoiceScreenForCustomer",
          queryParameters: {"orderId": message.data["orderId"]});
    } else {
      router.goNamed("notifications");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isAndroid = Platform.isAndroid;
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => SharedPreferencesRepository()),
        RepositoryProvider(
            create: (context) => DioSettings(
                preferences:
                    RepositoryProvider.of<SharedPreferencesRepository>(context)
                        .prefs)),
        RepositoryProvider(
            create: (context) => AuthDataSource(
                  dio: RepositoryProvider.of<DioSettings>(context).dio,
                )),
        RepositoryProvider(
            create: (context) => AuthRepoImpl(
                dataSource: RepositoryProvider.of<AuthDataSource>(context))),
        RepositoryProvider(
            create: (context) =>
                LoginDs(dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => LoginrepoImpl(
                dataSource: RepositoryProvider.of<LoginDs>(context))),
        RepositoryProvider(
            create: (context) => GetCategoriesDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetCategoriesRepoImpl(
                dataSource: RepositoryProvider.of<GetCategoriesDs>(context))),
        RepositoryProvider(
            create: (context) => SendCustomeSurveyDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => SendCustomerSurveyRepoImpl(
                dataSource:
                    RepositoryProvider.of<SendCustomeSurveyDs>(context))),
        RepositoryProvider(
            create: (context) => GetJobPrioritiesDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetJobPriorititiesListRepoimpl(
                dataSource:
                    RepositoryProvider.of<GetJobPrioritiesDs>(context))),
        RepositoryProvider(
            create: (context) => GetFabricTypesDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetFabricTypesRepoimpl(
                dataSource: RepositoryProvider.of<GetFabricTypesDs>(context))),
        RepositoryProvider(
            create: (context) => GetSizesDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetSizesRepoimpl(
                dataSource: RepositoryProvider.of<GetSizesDs>(context))),
        RepositoryProvider(
            create: (context) => GetCurrencyDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
          create: (context) => GetCurrentCurrencyImpl(
              dataSource: RepositoryProvider.of<GetCurrencyDs>(context)),
        ),
        RepositoryProvider(
            create: (context) => CreateOrderDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => CreateOrderRepoImpl(
                dataSource: RepositoryProvider.of<CreateOrderDs>(context))),
        RepositoryProvider(
            create: (context) => CreateAuctionDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => AuctionRepoImpl(
                dataSource: RepositoryProvider.of<CreateAuctionDs>(context))),
        RepositoryProvider(
            create: (context) => GetUserInfoDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetUserInfoRepoimpl(
                dataSource: RepositoryProvider.of<GetUserInfoDs>(context))),
        RepositoryProvider(
            create: (context) => GetAuctionsListDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetAuctionsListRepoimmpl(
                dataSource: RepositoryProvider.of<GetAuctionsListDs>(context))),
        RepositoryProvider(
            create: (context) => CreateManufacturerProfileDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => CreateManufacturerProfileRepoimpl(
                dataSource: RepositoryProvider.of<CreateManufacturerProfileDs>(
                    context))),
        RepositoryProvider(
            create: (context) => MakeBidDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => MakeBidRepoimpl(
                dataSource: RepositoryProvider.of<MakeBidDs>(context))),
        RepositoryProvider(
            create: (context) => SendMessageDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => SendMessageRepoimpl(
                dataSource: RepositoryProvider.of<SendMessageDs>(context))),
        RepositoryProvider(
            create: (context) => SendOrderDetailsDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => SendOrderDetailsRepoImpl(
                dataSource:
                    RepositoryProvider.of<SendOrderDetailsDs>(context))),
        RepositoryProvider(
            create: (context) => GetChatroomHistoryDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetChatRoomsHistoryRepoimpl(
                dataSource:
                    RepositoryProvider.of<GetChatroomHistoryDs>(context))),
        RepositoryProvider(
            create: (context) => GetChatsDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetChatRoomsRepoimpl(
                getChatsDs: RepositoryProvider.of<GetChatsDs>(context))),
        RepositoryProvider(
            create: (context) => CreateChatroomDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => CreateChatRepoimpl(
                dataSource: RepositoryProvider.of<CreateChatroomDs>(context))),
        RepositoryProvider(
            create: (context) => SendInvoiceDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => SendInvoiceRepoimpl(
                sendInvoiceDs: RepositoryProvider.of<SendInvoiceDs>(context))),
        RepositoryProvider(
            create: (context) => GetCustomersOrdersDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetCustomerOrdersRepoimpl(
                getCustomersOrdersDs:
                    RepositoryProvider.of<GetCustomersOrdersDs>(context))),
        RepositoryProvider(
            create: (context) => GetAuctionMembersDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetAuctionMembersRepoimpl(
                getAuctionMembersDs:
                    RepositoryProvider.of<GetAuctionMembersDs>(context))),
        RepositoryProvider(
            create: (context) => GetManufacturersDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetManufacturersRepoimpl(
                getManufacturersDs:
                    RepositoryProvider.of<GetManufacturersDs>(context))),
        RepositoryProvider(
            create: (context) => SendManufacturerSurveyDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => SendManufacturerSurveryRepoImpl(
                sendManufacturerSurveyDs:
                    RepositoryProvider.of<SendManufacturerSurveyDs>(context))),
        RepositoryProvider(
            create: (context) => SearchOrderDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => SearchOrderRepoImpl(
                searchOrderDs: RepositoryProvider.of<SearchOrderDs>(context))),
        RepositoryProvider(
            create: (context) => GetManufacturerAuctionsDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetManufacturerAuctionsRepoimpl(
                getManufacturerAuctionsDs:
                    RepositoryProvider.of<GetManufacturerAuctionsDs>(context))),
        RepositoryProvider(
            create: (context) => GetManufacturerInvoicesDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => OrderTrackingDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => OrderTrackingRepoimpl(
                orderTrackingDs:
                    RepositoryProvider.of<OrderTrackingDs>(context))),
        RepositoryProvider(
            create: (context) => ConfirmTrackingStageDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => ConfirmTrackingStageRepoimpl(
                confirmTrackingStageDs:
                    RepositoryProvider.of<ConfirmTrackingStageDs>(context))),
        RepositoryProvider(
            create: (context) => GetOrderDetailDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetOrderDetailsRepoImpl(
                getOrderDetailDs:
                    RepositoryProvider.of<GetOrderDetailDs>(context))),
        RepositoryProvider(
            create: (context) => GetDetailedAuctionInfoDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetDetailedAuctionInfoRepoimpl(
                getDetailedAuctionInfoDs:
                    RepositoryProvider.of<GetDetailedAuctionInfoDs>(context))),
        RepositoryProvider(
            create: (context) => UserAccountDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => DeleteAccountRepoimpl(
                deleteAccountDs:
                    RepositoryProvider.of<UserAccountDs>(context))),
        RepositoryProvider(
            create: (context) => ReviewForManufacturerDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetCustomerInvoicesDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => ReviewForManufacturerRepoimpl(
                reviewForManufacturerDs:
                    RepositoryProvider.of<ReviewForManufacturerDs>(context))),
        RepositoryProvider(
            create: (context) => GetCustomerInvoicesRepoimpl(
                getCustomerInvoicesDs:
                    RepositoryProvider.of<GetCustomerInvoicesDs>(context))),
        RepositoryProvider(
            create: (context) => GetManufacturerInvoicesRepoimpl(
                getCustomerInvoicesDs:
                    RepositoryProvider.of<GetCustomerInvoicesDs>(context),
                getManufacturerInvoicesDs:
                    RepositoryProvider.of<GetManufacturerInvoicesDs>(context))),
        RepositoryProvider(
            create: (context) => GetNotificationHistoryDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetNotificationHistoryRepoimpl(
                getNotificationHistoryDs:
                    RepositoryProvider.of<GetNotificationHistoryDs>(context))),
        RepositoryProvider(
            create: (context) => GetCustomersCompletedOrdersDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetCustomersCompletedOrdersRepoimpl(
                getCustomersCompletedOrdersDs:
                    RepositoryProvider.of<GetCustomersCompletedOrdersDs>(
                        context))),
        RepositoryProvider(
            create: (context) => ChangePasswordRepoimmpl(
                userAccountDs: RepositoryProvider.of<UserAccountDs>(context))),
        RepositoryProvider(
            create: (context) => GetManufacturersCompletedOrdersDs(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        RepositoryProvider(
            create: (context) => GetManufacturerCompletedOrdersRepoimpl(
                getManufacturersCompletedOrdersDs:
                    RepositoryProvider.of<GetManufacturersCompletedOrdersDs>(
                        context)))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => AuthBloc(
                  repoImpl: RepositoryProvider.of<AuthRepoImpl>(context))),
          BlocProvider(
              create: (context) => LoginBloc(
                  repoImpl: RepositoryProvider.of<LoginrepoImpl>(context))),
          BlocProvider(
              create: (context) => GetCategoriesBloc(
                  repoImpl:
                      RepositoryProvider.of<GetCategoriesRepoImpl>(context))),
          BlocProvider(
              create: (context) => SendCustomerSurveyDataBloc(
                  repoImpl: RepositoryProvider.of<SendCustomerSurveyRepoImpl>(
                      context))),
          BlocProvider(
              create: (context) => GetJobPrioritiesBloc(
                  repoImpl:
                      RepositoryProvider.of<GetJobPriorititiesListRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => GetFabricTypesBloc(
                  repoimpl:
                      RepositoryProvider.of<GetFabricTypesRepoimpl>(context))),
          BlocProvider(
            create: (context) => CreateOrderBloc(
                getSizesRepoimpl:
                    RepositoryProvider.of<GetSizesRepoimpl>(context),
                createOrderRepoImpl:
                    RepositoryProvider.of<CreateOrderRepoImpl>(context)),
          ),
          BlocProvider(
              create: (context) => CurrentCurrencyBloc(
                    getCurrentCurrencyImpl:
                        RepositoryProvider.of<GetCurrentCurrencyImpl>(context),
                  )),
          BlocProvider(
              create: (context) => GetAuctionMembersBloc(
                  getAuctionMembersRepoimpl:
                      RepositoryProvider.of<GetAuctionMembersRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => CreateAuctionBloc(
                  repoImpl: RepositoryProvider.of<AuctionRepoImpl>(context))),
          BlocProvider(
              create: (context) => CustomerAuctionsBloc(
                  getCustomerOrdersRepoimpl:
                      RepositoryProvider.of<GetCustomerOrdersRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => GetAuctionsBloc(
                    getAuctionsListRepoimpl:
                        RepositoryProvider.of<GetAuctionsListRepoimmpl>(
                            context),
                  )),
          BlocProvider(
              create: (context) => AuctionBloc(
                  makeBidRepoimpl:
                      RepositoryProvider.of<MakeBidRepoimpl>(context))),
          BlocProvider(
              create: (context) => UserBloc(
                  repoimpl:
                      RepositoryProvider.of<GetUserInfoRepoimpl>(context))),
          BlocProvider(
              create: (context) => ManufacturerBloc(
                  createManufacturerProfileRepoimpl:
                      RepositoryProvider.of<CreateManufacturerProfileRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => ChatsBloc(
                    repoimpl:
                        RepositoryProvider.of<SendMessageRepoimpl>(context),
                    getChatRoomHistoryRepo:
                        RepositoryProvider.of<GetChatRoomsHistoryRepoimpl>(
                            context),
                  )),
          BlocProvider(
              create: (context) => CreateChatRoomBloc(
                  createChatRepoimpl:
                      RepositoryProvider.of<CreateChatRepoimpl>(context))),
          BlocProvider(
              create: (context) => ChatRoomsBloc(
                    getChatRoomsRepoimpl:
                        RepositoryProvider.of<GetChatRoomsRepoimpl>(context),
                  )),
          BlocProvider(
              create: (context) => OrdersBloc(
                  sendOrderDetailsRepoImpl:
                      RepositoryProvider.of<SendOrderDetailsRepoImpl>(context),
                  sendInvoiceRepoimpl:
                      RepositoryProvider.of<SendInvoiceRepoimpl>(context))),
          BlocProvider(
              create: (context) => GetManufacturersProfileBloc(
                  getManufacturersRepoimpl:
                      RepositoryProvider.of<GetManufacturersRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => SendManufacturersSurveyBloc(
                  sendManufacturerSurveryRepoImpl:
                      RepositoryProvider.of<SendManufacturerSurveryRepoImpl>(
                          context))),
          BlocProvider(
              create: (context) => SearchOrderBloc(
                  searchOrderRepoImpl:
                      RepositoryProvider.of<SearchOrderRepoImpl>(context))),
          BlocProvider(
              create: (context) => ManufacturerAuctionsBloc(
                  getManufacturerAuctionsRepoimpl:
                      RepositoryProvider.of<GetManufacturerAuctionsRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => GetInvoicesBloc(
                  getManufacturerInvoicesRepoimpl:
                      RepositoryProvider.of<GetManufacturerInvoicesRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => OrderTrackingBloc(
                  orderTrackingRepoimpl:
                      RepositoryProvider.of<OrderTrackingRepoimpl>(context))),
          BlocProvider(
              create: (context) => ConfirmTrackingStageBloc(
                  confirmTrackingStageRepoimpl:
                      RepositoryProvider.of<ConfirmTrackingStageRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => GetOrderDetailsBloc(
                  getOrderDetailsRepoImpl:
                      RepositoryProvider.of<GetOrderDetailsRepoImpl>(context))),
          BlocProvider(
              create: (context) => GetDetailedAuctionInfoBloc(
                  getDetailedAuctionInfoRepoimpl:
                      RepositoryProvider.of<GetDetailedAuctionInfoRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => DeleteAccountBloc(
                  deleteAccountRepoimpl:
                      RepositoryProvider.of<DeleteAccountRepoimpl>(context))),
          BlocProvider(
              create: (context) => SendFeedBackBlocBloc(
                  reviewForManufacturerRepoimpl:
                      RepositoryProvider.of<ReviewForManufacturerRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => GetSubCategoriesBloc(
                  getCategoriesDs:
                      RepositoryProvider.of<GetCategoriesDs>(context))),
          BlocProvider(
              create: (context) => GetInvoiceDetailsBloc(
                  getCustomerInvoicesRepoimpl:
                      RepositoryProvider.of<GetCustomerInvoicesRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => NotificationHistoryBloc(
                  getNotificationHistoryRepoimpl:
                      RepositoryProvider.of<GetNotificationHistoryRepoimpl>(
                          context))),
          BlocProvider(
              create: (context) => CustomersCompletedOrdersBloc(
                  getCustomersCompletedOrdersRepoimpl: RepositoryProvider.of<
                      GetCustomersCompletedOrdersRepoimpl>(context))),
          BlocProvider(
              create: (context) => ChangePasswordBloc(
                  RepositoryProvider.of<ChangePasswordRepoimmpl>(context))),
          BlocProvider(
              create: (context) => ManufacturerCompletedOrdersBloc(
                  RepositoryProvider.of<GetManufacturerCompletedOrdersRepoimpl>(
                      context)))
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => PhotoProvider()),
            ChangeNotifierProvider(create: (context) => SizeProvider()),
            ChangeNotifierProvider(create: (context) => RoleProvider()),
            ChangeNotifierProvider(create: (context) => OrderProvider()),
            ChangeNotifierProvider(
                create: (context) =>
                    PlatformProvider(platformIsAndroid: isAndroid)),
            ChangeNotifierProvider(create: (context) => CategoriesProvider()),
            ChangeNotifierProvider(create: (context) => PrioritiesProvider()),
            ChangeNotifierProvider(create: (context) => ChatProvider())
          ],
          child: TextFieldUnfocus(
            child: ScreenUtilInit(
              designSize: const Size(390, 844),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp.router(
                theme: ThemeData(
                    scaffoldBackgroundColor: Colors.white,
                    progressIndicatorTheme: const ProgressIndicatorThemeData(
                        linearTrackColor: Colors.white,
                        circularTrackColor: Colors.white,
                        color: AppColors.accentTextColor)),
                debugShowCheckedModeBanner: false,
                routerConfig: router,
                supportedLocales: const [
                  Locale('ru', 'RU'),
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate
                ],
                builder: (context, child) {
                  EasyLoading.init();
                  return MediaQuery(
                      data: MediaQuery.of(context)
                          .copyWith(textScaler: TextScaler.noScaling),
                      child: child!);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
