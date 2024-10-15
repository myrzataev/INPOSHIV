// To parse this JSON data, do
//
//     final sizeModel = sizeModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'size_model.freezed.dart';
part 'size_model.g.dart';

List<SizeModel> sizeModelFromJson(String str) => List<SizeModel>.from(json.decode(str).map((x) => SizeModel.fromJson(x)));

String sizeModelToJson(List<SizeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SizeModel with _$SizeModel {
    const factory SizeModel({
        int? id,
        String? sizeNameUs,
        String? sizeNameRus,
    }) = _SizeModel;

    factory SizeModel.fromJson(Map<String, dynamic> json) => _$SizeModelFromJson(json);
}
