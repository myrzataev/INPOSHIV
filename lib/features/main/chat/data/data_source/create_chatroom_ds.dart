import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';

class CreateChatroomDs {
  final Dio dio;
  CreateChatroomDs({required this.dio});
  Future<CreateChatRoomModel> createChatRoom(
      {required Map<String, dynamic> chatData}) async {
    final Response response =
        await dio.post(UrlRoutes.createChatRoom, data: chatData);
    return CreateChatRoomModel.fromJson(response.data);
  }
}
