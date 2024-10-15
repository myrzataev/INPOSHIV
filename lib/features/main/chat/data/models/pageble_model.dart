// To parse this JSON data, do
//
//     final pagebleModel = pagebleModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pageble_model.freezed.dart';
part 'pageble_model.g.dart';

PagebleModel pagebleModelFromJson(String str) => PagebleModel.fromJson(json.decode(str));

String pagebleModelToJson(PagebleModel data) => json.encode(data.toJson());

@freezed
class PagebleModel with _$PagebleModel {
    const factory PagebleModel({
        int? page,
        int? size,
        List<String>? sort,
    }) = _PagebleModel;

    factory PagebleModel.fromJson(Map<String, dynamic> json) => _$PagebleModelFromJson(json);
}
