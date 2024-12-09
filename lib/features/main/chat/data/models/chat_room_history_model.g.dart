// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomHistoryModelImpl _$$ChatRoomHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatRoomHistoryModelImpl(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: json['pageable'] == null
          ? null
          : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      last: json['last'] as bool?,
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalElements: (json['totalElements'] as num?)?.toInt(),
      first: json['first'] as bool?,
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      sort: json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      numberOfElements: (json['numberOfElements'] as num?)?.toInt(),
      empty: json['empty'] as bool?,
    );

Map<String, dynamic> _$$ChatRoomHistoryModelImplToJson(
        _$ChatRoomHistoryModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
      'last': instance.last,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'first': instance.first,
      'size': instance.size,
      'number': instance.number,
      'sort': instance.sort,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      messageUuid: json['messageUuid'] as String?,
      chatUuid: json['chatUuid'] as String?,
      senderUuid: json['senderUuid'] as String?,
      senderName: json['senderName'] as String?,
      recipientName: json['recipientName'] as String?,
      imageUrl: json['imageUrl'],
      recipientUuid: json['recipientUuid'] as String?,
      content: json['content'] as String?,
      fileUrl: json['fileUrl'],
      fileType: json['fileType'],
      type: (json['type'] as num?)?.toInt(),
      messageStatus: json['messageStatus'] as String?,
      customerOrManufacturerUuid: json['customerOrManufacturerUuid'],
      orderId: json['orderId'],
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'messageUuid': instance.messageUuid,
      'chatUuid': instance.chatUuid,
      'senderUuid': instance.senderUuid,
      'senderName': instance.senderName,
      'recipientName': instance.recipientName,
      'imageUrl': instance.imageUrl,
      'recipientUuid': instance.recipientUuid,
      'content': instance.content,
      'fileUrl': instance.fileUrl,
      'fileType': instance.fileType,
      'type': instance.type,
      'messageStatus': instance.messageStatus,
      'customerOrManufacturerUuid': instance.customerOrManufacturerUuid,
      'orderId': instance.orderId,
    };

_$PageableImpl _$$PageableImplFromJson(Map<String, dynamic> json) =>
    _$PageableImpl(
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      sort: json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      offset: (json['offset'] as num?)?.toInt(),
      paged: json['paged'] as bool?,
      unpaged: json['unpaged'] as bool?,
    );

Map<String, dynamic> _$$PageableImplToJson(_$PageableImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'sort': instance.sort,
      'offset': instance.offset,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };

_$SortImpl _$$SortImplFromJson(Map<String, dynamic> json) => _$SortImpl(
      sorted: json['sorted'] as bool?,
      empty: json['empty'] as bool?,
      unsorted: json['unsorted'] as bool?,
    );

Map<String, dynamic> _$$SortImplToJson(_$SortImpl instance) =>
    <String, dynamic>{
      'sorted': instance.sorted,
      'empty': instance.empty,
      'unsorted': instance.unsorted,
    };
