import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/chat/data/models/chat_room_history_model.dart';
import 'package:inposhiv/features/main/chat/data/models/pageble_model.dart';

class GetChatroomHistoryDs {
  final Dio dio;
  GetChatroomHistoryDs({required this.dio});
  Future<List<ChatRoomHistoryModel>> getChatRoomHistory(
      {required String chatRoomUuid, required PagebleModel model}) async {
        print("////////////////// ${model.toJson()}");
    final Response response = await dio.get(
        "${UrlRoutes.getChatRoomHistory}/$chatRoomUuid",
        queryParameters: model.toJson());
    final List responseList = response.data;
    return responseList
        .map((element) => ChatRoomHistoryModel.fromJson(element))
        .toList();
  }
}
