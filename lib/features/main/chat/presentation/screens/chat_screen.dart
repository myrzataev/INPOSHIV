import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/auth/presentation/widgets/custom_button.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_bloc/chat_bloc.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatefulWidget {
  final String chatUuid;
  final String receipentUuid;
  final String orderId;
  final String autoMessage;
  const ChatScreen(
      {super.key,
      required this.chatUuid,
      required this.receipentUuid,
      required this.orderId,
      required this.autoMessage});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController scrollController = ScrollController();

  StompClient? stompClient;
  final preferences = locator<SharedPreferences>();
  bool? isCustomer;
  String? chatUuid; // Static UUID, modify this as needed
  List<types.Message> _messages = []; // List of chat messages
  // String? chatUuidMock =
  //     "9e205782-e9ea-40e0-9465-19efbe7709ea_f9b4d387-871a-4123-9a73-70830c220e88"; // Static UUID, modify this as needed
  // String? senderIdMock =
  //     "9e205782-e9ea-40e0-9465-19efbe7709ea"; // Static UUID, modify this as needed
  // String? receipentIdMock =
  //     "f9b4d387-871a-4123-9a73-70830c220e88"; // Static UUID, modify this as needed

  late final _currentUser;
  late final _secondUser;
  bool isConnected = false;

  @override
  void initState() {
    super.initState();

    isCustomer = preferences.getBool("isCustomer");
    chatUuid = widget.chatUuid;
    _currentUser = types.User(id: preferences.getString("userId") ?? "");
    _secondUser = types.User(id: widget.receipentUuid);

    // Fetch chat room history when screen loads
    BlocProvider.of<ChatsBloc>(context).add(ChatsEvent.getChatRoomHistory(
      chatRoomUuid: chatUuid ?? "",
      model: const PagebleModel(page: 0, size: 1, sort: []),
    ));

    connect(); // Establish WebSocket connection when the screen loads

    // Check if autoMessage is not null and not empty, then send it automatically
   sendAutoMessageWithDelay();
  }

  void sendAutoMessageWithDelay() {
    // Wait for 2 seconds and check if WebSocket is connected
    Future.delayed(Duration(seconds: 1), () {
      if (isConnected && widget.autoMessage.isNotEmpty) {
        _handleSendPressed(
          types.PartialText(text: widget.autoMessage),
          widget.receipentUuid,
          widget.chatUuid,
        );
        print("Auto message sent: ${widget.autoMessage}");
      } else {
        print("WebSocket not connected or no auto message to send.");
      }
    });
  }

  @override
  void dispose() {
    // disconnect(); // Close WebSocket connection when the screen is disposed
    super.dispose();
  }

  // Establish a WebSocket connection using StompClient
  void connect() {
    stompClient = StompClient(
      config: StompConfig.sockJS(
        url: '${UrlRoutes.baseUrl}/ws', // Replace with your WebSocket URL
        onConnect: (StompFrame frame) {
          debugPrint('Connected to WebSocket');
          debugPrint('Frame Headers: ${frame.headers}');
          debugPrint('Frame Body: ${frame.body}');
          debugPrint("Subscribing to /queue/messages/$chatUuid");
          isConnected = true;
          stompClient!.subscribe(
            destination: "/queue/messages/$chatUuid", // Chat destination
            callback: (StompFrame frame) {
              print(frame.body);
              if (frame.body != null) {
                print('Received frame body: ${frame.body}');

                var receivedMessage = jsonDecode(frame.body!);
                print('Received frame message: ${receivedMessage}');

                if (receivedMessage['senderUuid'] !=
                    // senderIdMock
                    _currentUser.id) {
                  _handleIncomingMessage(
                      receivedMessage); // Handle incoming message
                } else {}
              }
            },
          );
        },
        onWebSocketError: (dynamic error) {
          print('WebSocket error occurred: $error');
          if (error is WebSocketException) {
            print('WebSocketException details: ${error.message}');
          }
        },
      ),
    );
    stompClient!.activate(); // Activate the WebSocket connection
  }

  void sendMessage(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _currentUser,
      id: const Uuid().v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });
    BlocProvider.of<ChatsBloc>(context).add(ChatsEvent.sendMessage(
        chatUuid:
            "9e205782-e9ea-40e0-9465-19efbe7709ea_f9b4d387-871a-4123-9a73-70830c220e88",
        senderUuid: "9e205782-e9ea-40e0-9465-19efbe7709ea",
        recipientUuid: "f9b4d387-871a-4123-9a73-70830c220e88",
        content: message.text));
  }

  void sendAutoMessage() {
    print("this method is triggering");
    print("receipent id is ${widget.receipentUuid}");
    print("chat id is ${widget.chatUuid}");
    // print("receipent id is ${widget.receipentUuid}");
    stompClient?.send(
      destination:
          "/app/sendMessage/$chatUuid", // The destination where messages are sent
      body: jsonEncode({
        "recipientUuid":
            // "f9b4d387-871a-4123-9a73-70830c220e88",
            widget
                .receipentUuid, // Replace this with logic to get recipient's UUID
        'senderUuid':
            // "9e205782-e9ea-40e0-9465-19efbe7709ea",
            _currentUser.id,
        "content": "test message", // The actual message content
        'chatUuid': widget.chatUuid,
      }),
    );
  }

  void _handleSendPressed(
    types.PartialText message,
    String receipentId,
    String chatUuid,
  ) {
    if (stompClient != null && stompClient!.connected) {
      print("///////sending");
      final textMessage = types.TextMessage(
        author: _currentUser,
        id: const Uuid().v4(),
        createdAt: DateTime.now().millisecondsSinceEpoch,
        text: message.text,
      );

      setState(() {
        _messages.insert(0, textMessage);
      });

      stompClient?.send(
        destination:
            "/app/sendMessage/$chatUuid", // The destination where messages are sent
        body: jsonEncode({
          "recipientUuid": receipentId,
          // "f9b4d387-871a-4123-9a73-70830c220e88",
          // _secondUser.id, // Replace this with logic to get recipient's UUID
          'senderUuid':
              // "9e205782-e9ea-40e0-9465-19efbe7709ea",
              _currentUser.id,
          "content": message.text, // The actual message content
          'chatUuid': chatUuid
          //  widget.chatUuid,
        }),
      );
      print("///////sended");
    }
  }

  void _handleIncomingMessage(Map<String, dynamic> message) {
    // Проверка, является ли текущее сообщение отправленным текущим пользователем
    final isCurrentUserSender = message["senderUuid"] == _currentUser.id;
    print("///////////$isCurrentUserSender");
    // Создаем объект текстового сообщения
    final textMessage = types.TextMessage(
      author:
          isCurrentUserSender ? _currentUser : _secondUser, // Определяем автора
      id: const Uuid().v4(),
      createdAt: DateTime.now()
          .millisecondsSinceEpoch, // Можете заменить на фактическое время создания
      text: message["content"], // Текст сообщения
    );

    // Обновляем состояние и добавляем сообщение в список
    setState(() {
      _messages.insert(0, textMessage);
    });
  }

  void disconnect() {
    // stompClient?.deactivate(); // Deactivate the WebSocket connection
    print('Disconnected');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        // title: Padding(
        //   padding:  EdgeInsets.symmetric(vertical: 3.h),
        //   child: CustomButton(text: "Сформировать заказ", onPressed: () {}),
        // ),
        flexibleSpace: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 65.w),
              child: CustomButton(
                  text: (isCustomer ?? true)
                      ? "Сформировать заказ"
                      : "Счет на оплату",
                  onPressed: () {
                    // String? userIdFromPrefs = preferences.getString("userId");

                    // if (userIdFromPrefs != null &&
                    //     _secondUser.id == userIdFromPrefs) {
                    //   print(
                    //       "User ID from SharedPreferences matches _secondUser ID");
                    // } else {
                    //   print("User ID does not match _secondUser ID");
                    // }

                    GoRouter.of(context).pushNamed(
                        (isCustomer ?? true) ? "orderDetails" : "invoiceScreen",
                        queryParameters: {"orderId": "1"});
                  }),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CustomSearchWidget(
                onTap: () {}, child: SvgPicture.asset(SvgImages.search)),
          )
        ],
      ),
      body: BlocListener<ChatsBloc, ChatsState>(
        listener: (context, state) {
          state.maybeWhen(
              loading: () => showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => Dialog(
                        backgroundColor: Colors.transparent,
                        child: SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                      )),
              getChatroomHistoryError: (errorext) {
                GoRouter.of(context).pop();
              },
              getChatroomHistoryLoaded: (model) {
                GoRouter.of(context).pop();
                List<types.TextMessage> historyMessages =
                    model.map<types.TextMessage>((element) {
                  return types.TextMessage(
                    author: element.senderUuid == _currentUser.id
                        ? _currentUser
                        : _secondUser,
                    id: element.messageUuid.toString(), // Use messageUuid as ID
                    createdAt: DateTime.now()
                        .millisecondsSinceEpoch, // Replace with actual timestamp from the response if available
                    text: element.content ?? "", // The message content
                  );
                }).toList();

                setState(() {
                  _messages.insertAll(0, historyMessages.reversed);
                });
              },
              orElse: () {});
        },
        child: Chat(
            emptyState: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.containersGrey,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding: EdgeInsets.all(10.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(SvgImages.info),
                            SvgPicture.asset(SvgImages.close)
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                          child: Text(
                            "Пожалуйста, ознакомьтесь с правилами чата перед началом сотрудничества с производителем",
                            style: AppFonts.w700s20
                                .copyWith(color: AppColors.accentTextColor),
                          ),
                        ),
                        textWithDots(
                            text:
                                "Нельзя связываться и заключать сделки с производителями вне этого приложения"),
                        textWithDots(
                            text:
                                "Нельзя передавать свои личные данные производителю"),
                        textWithDots(
                            text:
                                "Все ваши переписки просматриваются операторами колл-центра! "),
                        textWithDots(
                            text:
                                "При выявлении нарушений вы сначала получите предупреждение. При повторном нарушении правил следует штраф. При систематическом нарушении Вас заблокируют."),
                        textWithDots(
                            text:
                                "Если цех предложит выйти с ним на связь напрямую, пожалуйста, не делайте этого! Вы можете потерять контроль над заказом, и, следовательно, Ваши деньги! "),
                        textWithDots(
                            text:
                                "Наше приложение не несет ответственности за договоренности вне данного приложения."),
                        Padding(
                          padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
                          child: CustomButton(
                            text: "Понятно",
                            onPressed: () {},
                            sizedTemporary: true,
                            height: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            messages: _messages, // Display the list of messages
            onSendPressed: (message) {
              _handleSendPressed(
                  message, widget.receipentUuid, widget.chatUuid);
            }
            //  sendMessage,
            , // What happens when the user sends a message
            user: _currentUser),
      ),
    );
  }

  Widget textWithDots({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• ",
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style:
                  AppFonts.w400s14.copyWith(color: AppColors.accentTextColor),
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildChatInputBar() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
  //     child: Row(
  //       children: [
  //         // Attachment icon
  //         IconButton(
  //           icon: SvgPicture.asset(
  //               SvgImages.document), // Replace with your attachment icon SVG
  //           onPressed: () {
  //             // Handle attachment press
  //           },
  //         ),

  //         // Input field
  //         Expanded(
  //           child: Container(
  //             padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
  //             decoration: BoxDecoration(
  //               color: Colors.white, // Background color
  //               borderRadius: BorderRadius.circular(20.0), // Rounded corners
  //               border:
  //                   Border.all(color: Colors.grey.shade300), // Optional border
  //             ),
  //             child: TextField(
  //               decoration: const InputDecoration(
  //                 hintText: "Сообщение", // Hint text
  //                 border: InputBorder.none, // No border for clean UI
  //               ),
  //               style: const TextStyle(fontSize: 16.0), // Customize text style
  //               onChanged: (text) {
  //                 // Handle text change
  //               },
  //             ),
  //           ),
  //         ),

  //         const SizedBox(
  //             width: 10.0), // Spacing between input field and send button

  //         // Send button (circle)
  //         CircleAvatar(
  //           radius: 20, // Size of the button
  //           backgroundColor: Colors.green, // Background color
  //           child: IconButton(
  //             icon: Icon(Icons.send, color: Colors.white), // Send icon
  //             onPressed: () {
  //               _handleSendPressed(types.PartialText(text: "text"));
  //             },
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
