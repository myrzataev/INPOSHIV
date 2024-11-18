import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_rooms_model.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_rooms_bloc/chat_rooms_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/providers/chat_provider.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
                    BlocProvider.of<ChatRoomsBloc>(context).add(
                        ChatRoomsEvent.getChatRoomsList(
                            userUuid: preferences.getString("userId") ?? ""));
                  });
                }
                return state.maybeWhen(
                    loading: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                    chatRoomsError: (errorText) => Center(
                          child: Text(errorText),
                        ),
                    chatRoomsLoaded: (model) {
                      if (model.isEmpty) {
                        return Center(
                          child: Text(
                            "Начните переписываться",
                            style: AppFonts.w700s16,
                          ),
                        );
                      } else {
                        return _buildChatRoomsList(model, () {
                          BlocProvider.of<ChatRoomsBloc>(context).add(
                              ChatRoomsEvent.getChatRoomsList(
                                  userUuid:
                                      preferences.getString("userId") ?? ""));
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
                    .updateReceipentId(currentItem.recipientUuid ?? "");
                GoRouter.of(context).pushNamed(
                  "chatScreen",
                  queryParameters: {
                    "receipentUuid": currentItem.recipientUuid,
                    "chatUuid": currentItem.chatUuid,
                    "orderId": currentItem.orderId.toString()
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
                            currentItem.lastMessageContent ?? "",
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
