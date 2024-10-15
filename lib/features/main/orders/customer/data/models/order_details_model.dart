// To parse this JSON data, do
//
//     final orderDetailsModel = orderDetailsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

OrderDetailsModel orderDetailsModelFromJson(String str) => OrderDetailsModel.fromJson(json.decode(str));

String orderDetailsModelToJson(OrderDetailsModel data) => json.encode(data.toJson());

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
    const factory OrderDetailsModel({
        int? orderId,
        String? productName,
        int? material,
        String? color,
        int? quantity,
        List<String>? technicalDocuments,
        List<String>? lekalaDocuments,
        DateTime? deadline,
        int? discount,
        String? deliveryPoint,
        List<String>? technicalDocumentUrls,
        List<String>? lekalaDocumentUrls,
    }) = _OrderDetailsModel;

    factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);
}
