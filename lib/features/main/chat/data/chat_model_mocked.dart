import 'package:inposhiv/resources/resources.dart';

class ChatModelMockedModel {
  final String userName;
  final String lastMessage;
  final int unreadMessages;
  final String date;
  final String profilePhoto;

  ChatModelMockedModel(
      {required this.userName,
      required this.lastMessage,
      required this.unreadMessages,
      required this.date,
      required this.profilePhoto});
}

abstract class ChatModelMockedData {
  static List<ChatModelMockedModel> data = [
    ChatModelMockedModel(
        userName: "Цех052",
        lastMessage: "Отлично, это нам подхо…",
        unreadMessages: 4,
        date: "11:29",
        profilePhoto: Images.sewingMachine),
    ChatModelMockedModel(
        userName: "Цех012",
        lastMessage: "Отлично, это нам подхо…",
        unreadMessages: 15,
        date: "10:39",
        profilePhoto: Images.sewingMachine),
    ChatModelMockedModel(
        userName: "Цех052",
        lastMessage: "Отлично, это нам подхо…",
        unreadMessages: 0,
        date: "11:29",
        profilePhoto: Images.sewingMachine),
    ChatModelMockedModel(
        userName: "Цех018",
        lastMessage: "Отлично, это нам qwnghibqaiewhbgiqhbaih;g…",
        unreadMessages: 9,
        date: "9:23",
        profilePhoto: Images.sewingMachine),
  ];
}
