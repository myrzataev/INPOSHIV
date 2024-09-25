import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController scrollController = ScrollController();
  late ChatController chatController;

  final currentUser = ChatUser(id: "id", name: "Murat");
  final userTwo = ChatUser(
    id: '3',
    name: 'Jhon',
    profilePhoto:
        'https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg', // Avatar URL for Jhon
  );
  final userThree = ChatUser(
    id: '4',
    name: 'Mike',
    profilePhoto:
        'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg', // Avatar URL for Mike
  );

  @override
  void initState() {
    chatController = ChatController(
      initialMessageList: [
        Message(
          id: '1',
          message:
              "Здравствуйте, хочу у вас заказать товар за 8.4\$ за единицу",
          createdAt: DateTime.now().subtract(Duration(minutes: 5)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '2',
          message:
              "Добрый день, да мы можем предоставить товар в размере 1200 штук за эту цену",
          createdAt: DateTime.now().subtract(Duration(minutes: 4)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '3',
          message:
              "Отлично, это нам подходит. Но для начала я бы хотел посмотреть образец?",
          createdAt: DateTime.now().subtract(Duration(minutes: 3)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '4',
          message: "Да конечно!",
          createdAt: DateTime.now().subtract(Duration(minutes: 2)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '1',
          message:
              "Здравствуйте, хочу у вас заказать товар за 8.4\$ за единицу",
          createdAt: DateTime.now().subtract(Duration(minutes: 5)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '2',
          message:
              "Добрый день, да мы можем предоставить товар в размере 1200 штук за эту цену",
          createdAt: DateTime.now().subtract(Duration(minutes: 4)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '3',
          message:
              "Отлично, это нам подходит. Но для начала я бы хотел посмотреть образец?",
          createdAt: DateTime.now().subtract(Duration(minutes: 3)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '4',
          message: "Да конечно!",
          createdAt: DateTime.now().subtract(Duration(minutes: 2)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '4',
          message:
              "Здравствуйте, хочу у вас заказать товар за 8.4\$ за единицу",
          createdAt: DateTime.now().subtract(Duration(minutes: 5)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '2',
          message:
              "Добрый день, да мы можем предоставить товар в размере 1200 штук за эту цену",
          createdAt: DateTime.now().subtract(Duration(minutes: 4)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '3',
          message:
              "Отлично, это нам подходит. Но для начала я бы хотел посмотреть образец?",
          createdAt: DateTime.now().subtract(Duration(minutes: 3)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '4',
          message: "Да конечно!",
          createdAt: DateTime.now().subtract(Duration(minutes: 2)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '1',
          message:
              "Здравствуйте, хочу у вас заказать товар за 8.4\$ за единицу",
          createdAt: DateTime.now().subtract(Duration(minutes: 5)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '2',
          message:
              "Добрый день, да мы можем предоставить товар в размере 1200 штук за эту цену",
          createdAt: DateTime.now().subtract(const Duration(minutes: 4)),
          sentBy: '3', // Jhon
        ),
        Message(
          id: '3',
          message:
              "Отлично, это нам подходит. Но для начала я бы хотел посмотреть образец?",
          createdAt: DateTime.now().subtract(Duration(minutes: 3)),
          sentBy: 'id', // Current user (Murat)
        ),
        Message(
          id: '4',
          message: "Да конечно!",
          createdAt: DateTime.now().subtract(Duration(minutes: 2)),
          sentBy: '3', // Jhon
        ),
      ],
      scrollController: scrollController,
      otherUsers: [userTwo, userThree],
      currentUser: currentUser,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChatView(
          featureActiveConfig:
              const FeatureActiveConfig(enableSwipeToSeeTime: true),
          appBar: AppBar(
            forceMaterialTransparency: true,
          ),
          chatBackgroundConfig: const ChatBackgroundConfiguration(
            backgroundColor: Colors.white,
          ),
          chatController: chatController,
          onSendTap: (message, replyMessage, messageType) {
            final newMessage = Message(
                id: DateTime.now()
                    .millisecondsSinceEpoch
                    .toString(), // Unique ID
                message: message, // Content of the message
                createdAt: DateTime.now(), // Current time
                sentBy: currentUser.id,
                status: MessageStatus.delivered // ID of the current user
                );

            // Add the new message to the chat controller
            chatController.addMessage(newMessage);

            // Optional: Scroll to the bottom or perform other actions
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          sendMessageConfig: SendMessageConfiguration(
              allowRecordingVoice: false,
              imagePickerConfiguration: const ImagePickerConfiguration(),
              replyMessageColor: Colors.grey,
              replyDialogColor: AppColors.cardsColor,
              replyTitleColor: Colors.black,
              closeIconColor: Colors.black,
              textFieldConfig: TextFieldConfiguration(
                
                  hintText: "Сообщение",
                  textStyle: AppFonts.w400s16.copyWith(color: Colors.black))),
          chatBubbleConfig: ChatBubbleConfiguration(
            outgoingChatBubbleConfig: ChatBubble(
                color: AppColors.chatsGreen, // Color for outgoing message
                textStyle: AppFonts.w400s16
                    .copyWith(color: AppColors.accentTextColor)),
            inComingChatBubbleConfig: ChatBubble(
              color: AppColors.cardsColor, // Color for incoming message
              textStyle: AppFonts.w400s16.copyWith(color: Colors.black),
            ),
          ),
          chatViewState: ChatViewState.hasMessages,
          messageConfig: MessageConfiguration(
            imageMessageConfig: ImageMessageConfiguration(
                shareIconConfig: ShareIconConfiguration()),
            customMessageBuilder: (p0) {
              return Column(
                children: [
                  Text(
                    p0.message,
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  ),
                  Text(
                    "${p0.createdAt.hour}:${p0.createdAt.minute}",
                    style: AppFonts.w400s16
                        .copyWith(color: AppColors.accentTextColor),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   State<ChatScreen> createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatScreen> {
//   List<Message> _messages = [];
//   final _user = const User(
//     id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
//   );

//   @override
//   void initState() {
//     super.initState();
//     _loadMessages();
//   }

//   void _addMessage(Message message) {
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }

//   void _handleAttachmentPressed() {
//     showModalBottomSheet<void>(
//       context: context,
//       builder: (BuildContext context) => SafeArea(
//         child: SizedBox(
//           height: 144,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   _handleImageSelection();
//                 },
//                 child: const Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text('Photo'),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                   _handleFileSelection();
//                 },
//                 child: const Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text('File'),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Align(
//                   alignment: AlignmentDirectional.centerStart,
//                   child: Text('Cancel'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _handleFileSelection() async {
//     final result = await FilePicker.platform.pickFiles(
//       type: FileType.any,
//     );

//     if (result != null && result.files.single.path != null) {
//       final message = types.FileMessage(
//         author: _user,
//         createdAt: DateTime.now().millisecondsSinceEpoch,
//         id: const Uuid().v4(),
//         mimeType: lookupMimeType(result.files.single.path!),
//         name: result.files.single.name,
//         size: result.files.single.size,
//         uri: result.files.single.path!,
//       );

//       _addMessage(message);
//     }
//   }

//   void _handleImageSelection() async {
//     final result = await ImagePicker().pickImage(
//       imageQuality: 70,
//       maxWidth: 1440,
//       source: ImageSource.gallery,
//     );

//     if (result != null) {
//       final bytes = await result.readAsBytes();
//       final image = await decodeImageFromList(bytes);

//       final message = types.ImageMessage(
//         author: _user,
//         createdAt: DateTime.now().millisecondsSinceEpoch,
//         height: image.height.toDouble(),
//         id: const Uuid().v4(),
//         name: result.name,
//         size: bytes.length,
//         uri: result.path,
//         width: image.width.toDouble(),
//       );

//       _addMessage(message);
//     }
//   }

//   void _handleMessageTap(BuildContext _, types.Message message) async {
//     if (message is types.FileMessage) {
//       var localPath = message.uri;

//       if (message.uri.startsWith('http')) {
//         try {
//           final index =
//               _messages.indexWhere((element) => element.id == message.id);
//           final updatedMessage =
//               (_messages[index] as types.FileMessage).copyWith(
//             isLoading: true,
//           );

//           setState(() {
//             _messages[index] = updatedMessage;
//           });

//           final client = http.Client();
//           final request = await client.get(Uri.parse(message.uri));
//           final bytes = request.bodyBytes;
//           final documentsDir = (await getApplicationDocumentsDirectory()).path;
//           localPath = '$documentsDir/${message.name}';

//           if (!File(localPath).existsSync()) {
//             final file = File(localPath);
//             await file.writeAsBytes(bytes);
//           }
//         } finally {
//           final index =
//               _messages.indexWhere((element) => element.id == message.id);
//           final updatedMessage =
//               (_messages[index] as types.FileMessage).copyWith(
//             isLoading: null,
//           );

//           setState(() {
//             _messages[index] = updatedMessage;
//           });
//         }
//       }

//       await OpenFilex.open(localPath);
//     }
//   }

//   void _handlePreviewDataFetched(
//     types.TextMessage message,
//     types.PreviewData previewData,
//   ) {
//     final index = _messages.indexWhere((element) => element.id == message.id);
//     final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
//       previewData: previewData,
//     );

//     setState(() {
//       _messages[index] = updatedMessage;
//     });
//   }

//   void _handleSendPressed(types.PartialText message) {
//     final textMessage = types.TextMessage(
//       author: _user,
//       createdAt: DateTime.now().millisecondsSinceEpoch,
//       id: const Uuid().v4(),
//       text: message.text,
//     );

//     _addMessage(textMessage);
//   }

//   void _loadMessages() async {
//     final response = await rootBundle.loadString('assets/messages.json');
//     final messages = (jsonDecode(response) as List)
//         .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
//         .toList();

//     setState(() {
//       _messages = messages;
//     });
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Chat(
//           messages: _messages,
//           onAttachmentPressed: _handleAttachmentPressed,
//           onMessageTap: _handleMessageTap,
//           onPreviewDataFetched: _handlePreviewDataFetched,
//           onSendPressed: _handleSendPressed,
//           showUserAvatars: true,
//           showUserNames: true,
//           user: _user,
//         ),
//       );
// }
