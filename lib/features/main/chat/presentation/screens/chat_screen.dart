import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_room_history_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/send_files_to_chat_bloc/send_files_to_chat_bloc.dart';
import 'package:inposhiv/features/main/chat/presentation/widgets/custom_chat_message.dart';
import 'package:inposhiv/features/tracking/presentation/widgets/customer/custom_tracking_comment.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:inposhiv/core/consts/url_routes.dart';

import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_bloc/chat_bloc.dart';

import 'package:inposhiv/services/shared_preferences.dart';

class ChatScreen extends StatefulWidget {
  final String chatUuid;
  final String receipentUuid;
  final String orderId;
  final String autoMessage;
  final String recipientName;

  const ChatScreen({
    super.key,
    required this.chatUuid,
    required this.receipentUuid,
    required this.orderId,
    required this.autoMessage,
    required this.recipientName,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with WidgetsBindingObserver {
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;
  String? chatUuid;
  late ChatUser currentUser;
  late ChatUser secondUser;

  StompClient? stompClient;
  bool isConnected = false;
  List<ChatMessage> messages = [];
  final receivedMessageIds = <String>{};
  final TextEditingController _controller = TextEditingController();
  late ScrollController _scrollController;
  int currentPage = 0;
  bool isLoading = false;
  bool hasMoreMessages = true;
  bool shouldScrollToBottom = true;
  bool recommendedMessageSended = false;
  List<Content?>? chatMessagesList;
  final List<String> recommendedMessages = [
    "Здравствуйте, я заинтересован",
    "Пришлите договор о сотрудничестве"
  ];
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom(
          shouldScrollToBottomForMethod:
              shouldScrollToBottom); // Прокрутка в самый низ после построения
    });
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addObserver(this);

    isCustomer = preferences.getBool("isCustomer");
    chatUuid = widget.chatUuid;
    currentUser = ChatUser(
      id: preferences.getString("userId") ?? "",
    );
    secondUser =
        ChatUser(id: widget.receipentUuid, firstName: widget.recipientName);

    BlocProvider.of<ChatsBloc>(context).add(ChatsEvent.getChatRoomHistory(
      chatRoomUuid: chatUuid ?? "",
      model: PagebleModel(page: currentPage, size: 20, sort: []),
    ));
    connect();
    _scrollToBottom(shouldScrollToBottomForMethod: true);
    sendAutoMessageWithDelay();
  }

  void _onScroll() {
   
    if (_scrollController.position.pixels <=
            _scrollController.position.minScrollExtent &&
        !isLoading &&
        hasMoreMessages) {
      _loadMoreMessages();
    }
  }

  void _loadMoreMessages() {
    if (isLoading || !hasMoreMessages) return;

    setState(() {
      isLoading = true;
      shouldScrollToBottom = false; // Отключаем автопрокрутку при пагинации
    });

    BlocProvider.of<ChatsBloc>(context).add(ChatsEvent.getChatRoomHistory(
      chatRoomUuid: chatUuid ?? "",
      model: PagebleModel(page: currentPage + 1, size: 20, sort: []),
    ));
  }

  void sendAutoMessageWithDelay() {
    Future.delayed(const Duration(seconds: 2), () {
      if (isConnected && widget.autoMessage.isNotEmpty) {
        sendMessage(
          ChatMessage(
            user: currentUser,
            text: widget.autoMessage,
            createdAt: DateTime.now(),
          ),
        );
        print("Auto message sent: ${widget.autoMessage}");
      } else {
        print("WebSocket not connected or no auto message to send.");
      }
    });
  }

  void connect() {
    stompClient = StompClient(
      config: StompConfig.sockJS(
        url: '${UrlRoutes.baseUrl}/ws',
        onConnect: (StompFrame frame) {
          // print('Connected to WebSocket');
          isConnected = true;
          stompClient?.subscribe(
            destination: "/queue/messages/$chatUuid",
            callback: (StompFrame frame) {
              if (frame.body != null) {
                final receivedMessage = jsonDecode(frame.body!);
                debugPrint("this is webcoket $receivedMessage");
                if (receivedMessage['senderUuid'] != currentUser.id) {
                  debugPrint("it going here");
                  _handleIncomingMessage(receivedMessage);
                }
              }
            },
          );
        },
        onWebSocketError: (dynamic error) {
          debugPrint('WebSocket error occurred: $error');
        },
      ),
    );
    stompClient?.activate();
  }

  void sendMessage(ChatMessage message) {
    setState(() {
      messages.insert(messages.length, message);
    });

    stompClient?.send(
      destination: "/app/sendMessage/$chatUuid",
      body: jsonEncode({
        "recipientUuid": secondUser.id,
        "senderUuid": currentUser.id,
        "content": message.text,
        "chatUuid": widget.chatUuid,
        "recipientName": widget.recipientName,
        "orderId": widget.orderId
      }),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom(shouldScrollToBottomForMethod: true);
    });
  }

  void _handleIncomingMessage(Map<String, dynamic> message) {
    if (receivedMessageIds.contains(message['messageUuid'])) {
      debugPrint("Message already processed: ${message['messageUuid']}");
      return;
    }

    if (message['senderUuid'] == currentUser.id) {
      debugPrint("Message from the current user, ignoring.");
      return;
    }

    receivedMessageIds.add(message['messageUuid']);

    String content = message['content'] ?? "";

    if (content.endsWith(".jpg") ||
        content.endsWith(".png") ||
        content.endsWith(".jpeg")) {
    } else if (content.endsWith(".pdf")) {
      print("PDF content: $content");
    } else {
      print("Text content: $content");
    }

    final newMessage = ChatMessage(
      user: secondUser,
      text: content,
      createdAt: DateTime.now(),
      customProperties: {
        'fileUrl': content.endsWith(".jpg") ||
                content.endsWith(".png") ||
                content.endsWith(".jpeg")
            ? content
            : null,
      },
    );

    debugPrint("New message from ${message['senderUuid']}: $content");

    setState(() {
      messages.insert(messages.length, newMessage);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom(shouldScrollToBottomForMethod: true);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    stompClient?.deactivate();
    _scrollController.removeListener(_onScroll);

    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          flexibleSpace: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 65.w,
                ),
                child: CustomButton(
                  sizedTemporary: true,
                  height: 50,
                  text: (isCustomer ?? true)
                      ? "Сформировать заказ"
                      : "Счет на оплату",
                  onPressed: () {
                    final route = (isCustomer ?? true)
                        ? "orderDetails"
                        : "orderDetailsForManufacturer";

                    router.pushNamed(
                      route,
                      extra: widget.orderId,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        body: BlocListener<ChatsBloc, ChatsState>(
          listener: (context, state) {
            state.maybeWhen(
              getChatroomHistoryLoaded: (model) {
                setState(() {
                  chatMessagesList = model.content;

                  // Map Content to ChatMessage
                  final historyMessages =
                      chatMessagesList?.map<ChatMessage>((element) {
                    return ChatMessage(
                      user: element?.senderUuid == currentUser.id
                          ? currentUser
                          : secondUser,
                      text: element?.content ?? "",
                      createdAt: DateTime.now(),
                    );
                  }).toList();

                  if (historyMessages == null || historyMessages.isEmpty) {
                    hasMoreMessages = false; // No more messages
                  } else {
                    messages.insertAll(0, historyMessages.reversed.toList());
                    if (isLoading) {
                      // Increment currentPage only during pagination
                      currentPage++;
                    }
                  }

                  isLoading = false; // Reset loading state
                });

                // Scroll to bottom if required
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _scrollToBottom(
                      shouldScrollToBottomForMethod: shouldScrollToBottom);
                });
              },
              orElse: () {
                // Reset loading state in case of error
                setState(() {
                  isLoading = false;
                });
              },
            );
          },
          child: BlocListener<SendFilesToChatBloc, SendFilesToChatState>(
            listener: (context, state) {
              state.maybeWhen(
                  loaded: (fileUrl) {
                    sendMessage(ChatMessage(
                      text: fileUrl,
                      user: currentUser,
                      createdAt: DateTime.now(),
                      customProperties: {'content': fileUrl},
                    ));
                  },
                  orElse: () {});
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 7.h),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: messages.length + (isLoading ? 1 : 0),
                        cacheExtent: MediaQuery.sizeOf(context).height * 2,
                        itemBuilder: (context, index) {
                          if (isLoading && index == 0) {
                            return const Center(
                                child: CircularProgressIndicator.adaptive());
                          }
                          final message = messages[
                              index - (isLoading ? 1 : 0)]; // Смещение индекса

                          // Определяем, является ли это изображением или файлом
                          bool isImage = message.text.endsWith('.jpg') ||
                              message.text.endsWith('.png') ||
                              message.text.endsWith('.jpeg');
                          bool isFile = message.text.endsWith('.pdf') ||
                              message.text.contains('http');

                          return CustomChatMessage(
                            content: message.text,
                            isImage: isImage,
                            isFile: isFile,
                            fileUrl: message.text,
                            isSender: message.user.id == currentUser.id,
                          );
                        },
                      ),
                    ),

                    _buildRecommendedMessages(), // Рекомендованные сообщения

                    _buildMessageInput(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void _pickImage({required String filePath, required String fileName}) async {
    // Create the message with the image's local path
    final imageMessage = ChatMessage(
      user: currentUser,
      createdAt: DateTime.now(),
    );

    setState(() {
      messages.add(imageMessage); // Add the message immediately
    });

    // Optionally, upload the image to the server
    _uploadFile(filePath: filePath, fileName: fileName);
  }

  void _uploadFile({required String filePath, required String fileName}) async {
    try {
      final multipartFile = await MultipartFile.fromFile(
        filePath,
        filename: fileName,
      );

      final body = {
        "file": multipartFile,
      };

      BlocProvider.of<SendFilesToChatBloc>(context).add(
        SendFilesToChatEvent.started(body: body),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _scrollToBottom({required bool shouldScrollToBottomForMethod}) {
    if (shouldScrollToBottomForMethod && _scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
      );
    }
  }

  Widget _buildRecommendedMessages() {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.r)),
              child: TextButton(
                  onPressed: () {
                    sendMessage(ChatMessage(
                        user: currentUser,
                        createdAt: DateTime.now(),
                        text: recommendedMessages[index]));
                    setState(() {
                      recommendedMessageSended = true;
                    });
                  },
                  child: Text(
                    recommendedMessages[index],
                    style: AppFonts.w400s16.copyWith(color: Colors.white),
                  )),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 5.w,
            );
          },
          itemCount: recommendedMessages.length),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h, top: 5.h),
      child: CustomTrackingComment(
        onTap: () {
          if (_controller.text.isNotEmpty) {
            sendMessage(ChatMessage(
              user: currentUser,
              text: _controller.text,
              createdAt: DateTime.now(),
            ));
            _controller.clear();
            _scrollToBottom(shouldScrollToBottomForMethod: true);
          }
        },
        onFilePicked: (filePath, fileName) {
          _pickImage(filePath: filePath, fileName: fileName);
        },
        onImagePickedFromGallery: (imagePath, fileName) {
          _pickImage(filePath: imagePath, fileName: fileName);
        },
        onImagePickedFromCamera: (imagePath, fileName) {
          _pickImage(filePath: imagePath, fileName: fileName);
        },
        controller: _controller,
      ),
    );
  }
}
