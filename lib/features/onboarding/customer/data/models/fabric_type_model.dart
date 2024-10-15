// To parse this JSON data, do
//
//     final fabricTypeModel = fabricTypeModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'fabric_type_model.freezed.dart';
part 'fabric_type_model.g.dart';

List<FabricTypeModel> fabricTypeModelFromJson(String str) => List<FabricTypeModel>.from(json.decode(str).map((x) => FabricTypeModel.fromJson(x)));

String fabricTypeModelToJson(List<FabricTypeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FabricTypeModel with _$FabricTypeModel {
    const factory FabricTypeModel({
        int? id,
        String? name,
    }) = _FabricTypeModel;

    factory FabricTypeModel.fromJson(Map<String, dynamic> json) => _$FabricTypeModelFromJson(json);
}
