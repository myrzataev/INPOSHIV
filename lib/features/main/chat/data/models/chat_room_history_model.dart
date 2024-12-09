import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_room_history_model.freezed.dart';
part 'chat_room_history_model.g.dart';

@freezed
class ChatRoomHistoryModel with _$ChatRoomHistoryModel {
    const factory ChatRoomHistoryModel({
        List<Content>? content,
        Pageable? pageable,
        bool? last,
        int? totalPages,
        int? totalElements,
        bool? first,
        int? size,
        int? number,
        Sort? sort,
        int? numberOfElements,
        bool? empty,
    }) = _ChatRoomHistoryModel;

    factory ChatRoomHistoryModel.fromJson(Map<String, dynamic> json) => _$ChatRoomHistoryModelFromJson(json);
}

@freezed
class Content with _$Content {
    const factory Content({
        String? messageUuid,
        String? chatUuid,
        String? senderUuid,
        String? senderName,
        String? recipientName,
        dynamic imageUrl,
        String? recipientUuid,
        String? content,
        dynamic fileUrl,
        dynamic fileType,
        int? type,
        String? messageStatus,
        dynamic customerOrManufacturerUuid,
        dynamic orderId,
    }) = _Content;

    factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
}

@freezed
class Pageable with _$Pageable {
    const factory Pageable({
        int? pageNumber,
        int? pageSize,
        Sort? sort,
        int? offset,
        bool? paged,
        bool? unpaged,
    }) = _Pageable;

    factory Pageable.fromJson(Map<String, dynamic> json) => _$PageableFromJson(json);
}

@freezed
class Sort with _$Sort {
    const factory Sort({
        bool? sorted,
        bool? empty,
        bool? unsorted,
    }) = _Sort;

    factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}