import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_rooms_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_rooms_bloc/chat_rooms_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
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
  List<ChatRoomsModel> _cachedModel = [];
  StompClient? stompClient;

  @override
  void initState() {
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
        userUuid:
         preferences.getString("userId") ?? ""));
  }

  void connect() {
    print("connect method is calling");
    stompClient = StompClient(
      config: StompConfig.sockJS(
        url: 'http://192.168.31.141:8080/ws',
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
                        return const Center(
                          child: Text("empty"),
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

  Widget _buildChatRoomsList(List<ChatRoomsModel> model, Function onRefresh) {
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
                GoRouter.of(context).pushNamed(
                  "chatScreen",
                  queryParameters: {
                    "receipentUuid": currentItem.recipientUuid,
                    "chatUuid": currentItem.chatUuid,
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
                        backgroundImage: const AssetImage(Images.sewingMachine),
                      ),
                    ),
                    SizedBox(
                      width: 210.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentItem.recipientName ?? "",
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
                              currentItem.localDateTime?.toString() ?? "",
                              style: AppFonts.w400s16,
                            ),
                            SvgPicture.asset(
                              SvgImages.send,
                              height: 20.h,
                              width: 20.w,
                            )
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
}
