import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/custom_error_widget.dart';
import 'package:inposhiv/core/widgets/loading_card.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_rooms_model.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_rooms_bloc/chat_rooms_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/providers/chat_provider.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/shared/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  ScrollController scrollController = ScrollController();
  final preferences = locator<SharedPreferences>();
  List<CreateChatRoomModel> _cachedModel = [];
  StompClient? stompClient;
  bool? isCustomer;
  @override
  void initState() {
    isCustomer = preferences.getBool("isCustomer");
    connect();
    callBloc();
    super.initState();
  }

  @override
  void dispose() {
    stompClient?.deactivate();
    super.dispose();
  }

  void callBloc() {
    BlocProvider.of<ChatRoomsBloc>(context).add(ChatRoomsEvent.getChatRoomsList(
        userUuid: preferences.getString("userId") ?? ""));
  }

  void connect() {
    print("connect method is calling");
    stompClient = StompClient(
      config: StompConfig.sockJS(
        url: '${UrlRoutes.baseUrl}/ws',
        onConnect: (StompFrame frame) {
          stompClient!.subscribe(
            destination: "/getChatRooms/${preferences.getString("userId")}",
            callback: (StompFrame frame) {
              debugPrint('Connected to WebSocket');
              debugPrint('Frame Headers: ${frame.headers}');
              debugPrint('Frame Body: ${frame.body}');
              debugPrint(
                  "Subscribing to /getChatRooms/${preferences.getString("userId")}");
              print("frame body is ${(frame.body)}");
              if (frame.body != null) {
                final updatedModel = json.decode(frame.body!);
                setState(() {
                  _cachedModel = updatedModel
                      .map<ChatRoomsModel>(
                          (json) => ChatRoomsModel.fromJson(json))
                      .toList();
                });
              }
            },
          );
        },
        onWebSocketError: (dynamic error) {
          print('WebSocket error occurred: $error');
        },
      ),
    );
    stompClient!.activate();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Builder(
              builder: (context) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSearchWidget(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: SvgPicture.asset(SvgImages.burgerMenu)),
                  CustomSearchWidget(
                      onTap: () {
                        GoRouter.of(context).pushNamed("searchScreen");
                        // GoRouter.of(context).pushNamed("searchScreen");
                      },
                      child: SvgPicture.asset(SvgImages.search))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: const Divider(
                color: AppColors.borderColor,
              ),
            ),
            BlocBuilder<ChatRoomsBloc, ChatRoomsState>(
              builder: (context, state) {
                if (_cachedModel.isNotEmpty) {
                  return _buildChatRoomsList(_cachedModel, () {
                    callBloc();
                  });
                }
                return state.maybeWhen(
                    loading: () => Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Shimmer.fromColors(
                                baseColor:
                                    const Color.fromARGB(255, 213, 211, 211),
                                highlightColor:
                                    const Color.fromARGB(255, 168, 165, 165),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.r,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Container(
                                        height: 50.h,
                                        width: 280.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              5.r), // Static radius
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 7.h,
                              );
                            },
                            itemCount: 15)),
                    chatRoomsError: (error) => Expanded(
                          child: CustomErrorWidget(
                              description: error.userMessage,
                              onRefresh: () {
                                callBloc();
                              }),
                        ),
                    chatRoomsLoaded: (model) {
                      if (model.isEmpty) {
                        return RefreshIndicator.adaptive(
                          onRefresh: () async => (callBloc()),
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Align text to the center horizontally
                              children: [
                                SizedBox(
                                  height: 100.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.0.h), // Add some padding
                                  child: Text(
                                    (isCustomer ?? true)
                                        ? "Выберите производителя во время аукциона и свяжитесь с ним"
                                        : "Заказчик свяжется с вами, если выберет вас в ходе аукциона",
                                    textAlign: TextAlign.center,
                                    style: AppFonts.w700s20.copyWith(
                                      color: AppColors.accentTextColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 150.h,
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return _buildChatRoomsList(model, () {
                          callBloc();
                        });
                      }
                    },
                    orElse: () {
                      return InkWell(
                          onTap: () =>
                              GoRouter.of(context).pushNamed("invoiceScreen"),
                          child: const Text("data"));
                    });
              },
            )
          ],
        ),
      )),
    );
    // );
  }

  Widget _buildChatRoomsList(
      List<CreateChatRoomModel> model, Function onRefresh) {
    return Expanded(
      child: RefreshIndicator.adaptive(
        onRefresh: () async {
          await onRefresh();
        },
        child: ListView.separated(
          itemBuilder: (context, index) {
            final currentItem = model[index];
            return InkWell(
              onTap: () {
                Provider.of<ChatProvider>(context, listen: false)
                    .updateChatRoomId(currentItem.chatUuid ?? "");
                Provider.of<ChatProvider>(context, listen: false)
                    .updateReceipentId(
                        currentItem.customerOrManufacturerUuid ?? "");
                GoRouter.of(context).pushNamed(
                  "chatScreen",
                  queryParameters: {
                    "receipentUuid": (isCustomer ?? true)
                        ? currentItem.recipientUuid
                        : currentItem.senderUuid,
                    "chatUuid": currentItem.chatUuid,
                    "orderId": currentItem.orderId.toString(),
                    "recipientName": (isCustomer ?? true)
                        ? currentItem.senderName
                        : currentItem.recipientName,
                  },
                );
              },
              child: SizedBox(
                height: 72.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: CircleAvatar(
                        radius: 25.r,
                        backgroundImage: AssetImage((isCustomer ?? true)
                            ? Images.sewingMachine
                            : Images.seller),
                      ),
                    ),
                    SizedBox(
                      width: 210.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            (isCustomer ?? true)
                                ? currentItem.recipientName ?? ""
                                : currentItem.senderName ?? "",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: AppFonts.w700s20
                                .copyWith(color: AppColors.accentTextColor),
                          ),
                          Text(
                            ((currentItem.lastMessageContent
                                            ?.endsWith(".jpg") ??
                                        false) ||
                                    (currentItem.lastMessageContent
                                            ?.endsWith(".jpeg") ??
                                        false) ||
                                    (currentItem.lastMessageContent
                                            ?.endsWith(".png") ??
                                        false))
                                ? "Фото"
                                : (currentItem.lastMessageContent
                                            ?.endsWith(".pdf") ??
                                        false)
                                    ? "Файл"
                                    : currentItem.lastMessageContent ?? "",
                            style: AppFonts.w400s16,
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              _formatDate(
                                      currentItem.lastMessageDate.toString()) ??
                                  "",
                              style: AppFonts.w400s16,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                            ((currentItem.lastMessageSenderUuid ?? "") ==
                                    (preferences.getString("userId") ?? ""))
                                ? SvgPicture.asset(
                                    SvgImages.send,
                                    height: 20.h,
                                    width: 20.w,
                                  )
                                : const SizedBox.shrink()
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: AppColors.borderColor,
            );
          },
          itemCount: model.length,
        ),
      ),
    );
  }

  String? _formatDate(String? dateString) {
    if (dateString == null) return null;

    try {
      // Parse the date string into a DateTime object
      final DateTime dateTime = DateTime.parse(dateString);

      // Format the DateTime object to display only hour and minutes
      final String formattedTime = DateFormat.Hm().format(dateTime); // 'HH:mm'
      return formattedTime;
    } catch (e) {
      // Return null if parsing fails
      return null;
    }
  }
}
