import 'package:dio/dio.dart';
import 'package:inposhiv/features/main/auction/data/models/auction_members_model.dart';

class GetAuctionMembersDs {
  final Dio dio;
  GetAuctionMembersDs({required this.dio});
  Future<List<AuctionMembersModel>> getAuctionMembers(
      {required String auctionId}) async {
    final Response response =
        await dio.post("api/auctions/$auctionId/manufacturers");
    final List responseList = response.data;
    return responseList
        .map((element) => AuctionMembersModel.fromJson(element))
        .toList();
  }
}
