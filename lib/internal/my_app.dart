import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/network/dio_settings.dart';
import 'package:inposhiv/core/platform/platform_provider.dart';
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
import 'package:inposhiv/features/main/auction/data/data_source/make_bid_ds.dart';
import 'package:inposhiv/features/main/auction/data/repositories/auction_repo_impl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auction_members_repoimpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_auctions_list_repoimmpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/get_customer_orders_repoimpl.dart';
import 'package:inposhiv/features/main/auction/data/repositories/make_bid_repoimpl.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/auction_bloc/auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/create_auction_bloc/create_auction_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/customer_auctions_bloc/customer_auctions_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auction_members_bloc/get_auction_members_bloc.dart';
import 'package:inposhiv/features/main/auction/presentation/blocs/get_auctions_bloc/get_auctions_bloc.dart';
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
import 'package:inposhiv/features/main/home/data/data_source/get_manufacturers_ds.dart';
import 'package:inposhiv/features/main/home/data/data_source/get_user_info_ds.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_manufacturers_repoimpl.dart';
import 'package:inposhiv/features/main/home/data/repositories/get_user_info_repoimpl.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/get_manufacturers_profile_bloc/get_manufacturers_profile_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/customer/blocs/user_bloc/user_bloc.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/send_invoice_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/data_source/send_order_details_ds.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_invoice_repoimpl.dart';
import 'package:inposhiv/features/main/orders/customer/data/repositories/send_order_details_repo_impl.dart';
import 'package:inposhiv/features/main/orders/customer/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/create_order_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_currency_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_fabric_types_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/data_source/get_sizes_ds.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/create_order_repo_impl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_current_currency_impl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_fabric_types_repoimpl.dart';
import 'package:inposhiv/features/onboarding/customer/data/repositories/get_sizes_repoimpl.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/blocs/get_fabric_types_bloc/get_fabric_types_bloc.dart';
import 'package:inposhiv/features/onboarding/customer/presentation/providers/order_provider.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/data_source/create_manufacturer_profile_ds.dart';
import 'package:inposhiv/features/onboarding/manufacturer/data/repositories/create_manufacturer_profile_repoimpl.dart';
import 'package:inposhiv/features/onboarding/manufacturer/presentation/blocs/manufacturer_bloc/manufacturer_bloc.dart';
import 'package:inposhiv/features/survey/data/data_source/get_categories_ds.dart';
import 'package:inposhiv/features/survey/data/data_source/get_job_priorities_ds.dart';
import 'package:inposhiv/features/survey/data/data_source/send_custome_survey_ds.dart';
import 'package:inposhiv/features/survey/data/repositories/get_categories_repo_impl.dart';
import 'package:inposhiv/features/survey/data/repositories/get_job_prioritities_list_repoimpl.dart';
import 'package:inposhiv/features/survey/data/repositories/send_customer_survey_repo_impl.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_categories_bloc/get_categories_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/get_job_priorities_bloc/get_job_priorities_bloc.dart';
import 'package:inposhiv/features/survey/presentation/blocs/send_customer_survey_data_bloc/send_customer_survey_data_bloc.dart';
import 'package:inposhiv/features/survey/presentation/providers/categories_provider.dart';
import 'package:inposhiv/services/keyboard_unfocuser.dart';
import 'package:inposhiv/services/messaging_service.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  final Uri? initialLink;
  const MyApp({super.key, this.initialLink});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamSubscription<Uri?>? _sub;
  final messagingService = MessagingService();

  @override
  void initState() {
    messagingService.init();
    super.initState();
    _handleIncomingLinks();
    // Handle initial link, if any
    if (widget.initialLink != null) {
      _navigateBasedOnLink(widget.initialLink!);
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  void _handleIncomingLinks() async {
    _sub = uriLinkStream.listen((Uri? link) {
      if (link != null) {
        _navigateBasedOnLink(link);
      }
    }, onError: (err) {});
  }

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
                    RepositoryProvider.of<GetManufacturersDs>(context)))
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
                getCurrentCurrencyImpl:
                    RepositoryProvider.of<GetCurrentCurrencyImpl>(context),
                getSizesRepoimpl:
                    RepositoryProvider.of<GetSizesRepoimpl>(context),
                createOrderRepoImpl:
                    RepositoryProvider.of<CreateOrderRepoImpl>(context)),
          ),
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
                      RepositoryProvider.of<GetManufacturersRepoimpl>(context)))
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
            ChangeNotifierProvider(create: (context) => CategoriesProvider())
          ],
          child: TextFieldUnfocus(
            child: ScreenUtilInit(
              designSize: const Size(390, 844),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MaterialApp.router(
                theme: ThemeData(scaffoldBackgroundColor: Colors.white),
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
