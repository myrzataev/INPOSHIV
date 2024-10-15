// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_convert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyConvertModelImpl _$$CurrencyConvertModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrencyConvertModelImpl(
      currencyCode: json['currencyCode'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CurrencyConvertModelImplToJson(
        _$CurrencyConvertModelImpl instance) =>
    <String, dynamic>{
      'currencyCode': instance.currencyCode,
      'rate': instance.rate,
    };
