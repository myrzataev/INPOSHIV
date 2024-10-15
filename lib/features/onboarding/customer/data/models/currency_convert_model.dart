// To parse this JSON data, do
//
//     final currencyConvertModel = currencyConvertModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'currency_convert_model.freezed.dart';
part 'currency_convert_model.g.dart';

CurrencyConvertModel currencyConvertModelFromJson(String str) => CurrencyConvertModel.fromJson(json.decode(str));

String currencyConvertModelToJson(CurrencyConvertModel data) => json.encode(data.toJson());

@freezed
class CurrencyConvertModel with _$CurrencyConvertModel {
    const factory CurrencyConvertModel({
        String? currencyCode,
        double? rate,
    }) = _CurrencyConvertModel;

    factory CurrencyConvertModel.fromJson(Map<String, dynamic> json) => _$CurrencyConvertModelFromJson(json);
}
