// To parse this JSON data, do
//
//     final invoiceModel = invoiceModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

InvoiceModel invoiceModelFromJson(String str) => InvoiceModel.fromJson(json.decode(str));

String invoiceModelToJson(InvoiceModel data) => json.encode(data.toJson());

@freezed
class InvoiceModel with _$InvoiceModel {
    const factory InvoiceModel({
        int? orderId,
        int? preliminaryQuantity,
        String? invoiceUuid,
        int? pricePerUnit,
        int? preliminaryAmount,
        int? lekalaCost,
        int? sampleCost,
        int? deliveryCost,
        int? discount,
        int? totalAmount,
    }) = _InvoiceModel;

    factory InvoiceModel.fromJson(Map<String, dynamic> json) => _$InvoiceModelFromJson(json);
}
