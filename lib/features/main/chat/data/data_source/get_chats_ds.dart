import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/chat/data/models/create_chat_room_model.dart';

class GetChatsDs {
  final Dio dio;
  GetChatsDs({required this.dio});
  Future<List<CreateChatRoomModel>> getChatsList({required String userUuid}) async {
    final Response response = await dio.get(
      "${UrlRoutes.getChatRoomsList}/$userUuid",
    );
    final List responseList = response.data;
    return responseList
        .map((element) => CreateChatRoomModel.fromJson(element))
        .toList();
  }
}
