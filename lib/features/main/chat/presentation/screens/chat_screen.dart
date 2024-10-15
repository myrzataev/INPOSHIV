import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';
import 'package:inposhiv/features/main/chat/presentation/blocs/chat_bloc/chat_bloc.dart';
import 'package:inposhiv/services/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:uuid/uuid.dart';

class ChatScreen extends StatefulWidget {
  final String orderId;

  const ChatScreen({super.key, required this.orderId});

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController scrollController = ScrollController();

  StompClient? stompClient;
  final preferences = locator<SharedPreferences>();
  String chatUuid =
      "02e34f94-2c8f-45f5-b50a-823f87ebcb32_0f984d66-ddff-45ed-bf1b-a854546955aa"; // Static UUID, modify this as needed
  List<types.Message> _messages = []; // List of chat messages

  late final _currentUser;
  late final _secondUser;
  @override
  void initState() {
    _currentUser = types.User(id: "219b0af9-7149-4230-9e63-a49cd45aee56");
    // types.User(id: preferences.getString("userId") ?? "");
    _secondUser = const types.User(id: "bbea8da7-33f0-4f47-8a90-b810d2655f11");
    // BlocProvider.of<ChatBloc>(context).add(ChatEvent.getChatRoomHistory(
    //     chatRoomUuid: chatUuid,
    //     model: const PagebleModel(page: 0, size: 1, sort: [])));
    types.User(id: preferences.getString("userId") ?? "");
    super.initState();
    connect(); // Establish WebSocket connection when the screen loads
  }

  @override
  void dispose() {
    disconnect(); // Close WebSocket connection when the screen is disposed
    super.dispose();
  }

  // Establish a WebSocket connection using StompClient
  void connect() {
    stompClient = StompClient(
      config: StompConfig.sockJS(
        url: 'http://localhost:8080/ws', // Replace with your WebSocket URL
        onConnect: (StompFrame frame) {
          print('Connected to WebSocket');
          print('Frame Headers: ${frame.headers}');
          print('Frame Body: ${frame.body}');
          print("Subscribing to /queue/messages/$chatUuid");

          stompClient!.subscribe(
            destination: "/queue/messages/$chatUuid", // Chat destination
            callback: (StompFrame frame) {
              print(frame.body);
              if (frame.body != null) {
                print('Received frame body: ${frame.body}');

                var receivedMessage = jsonDecode(frame.body!);
                print('Received frame message: ${receivedMessage}');

                _handleIncomingMessage(receivedMessage);
                if (receivedMessage['senderUuid'] != _currentUser.id) {
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

  void _handleSendPressed(types.PartialText message) {
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
          "recipientUuid":
              _secondUser.id, // Replace this with logic to get recipient's UUID
          'senderUuid': _currentUser.id,
          "content": message.text, // The actual message content
          'chatUuid': chatUuid,
        }),
      );
      print("///////sended");
    }
  }

  void _handleIncomingMessage(Map<String, dynamic> message) {
    final textMessage = types.TextMessage(
      author:
          message["senderUuid"] == _currentUser.id ? _currentUser : _secondUser,
      id: const Uuid().v4(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      text: message["content"],
    );

    setState(() {
      _messages.insert(0, textMessage);
    });
  }

  void disconnect() {
    stompClient?.deactivate(); // Deactivate the WebSocket connection
    print('Disconnected');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: Chat(
        messages: _messages, // Display the list of messages
        onSendPressed:
            _handleSendPressed, // What happens when the user sends a message
        user: _currentUser, // Identify the current user sending messages
      ),
    );
  }
}
