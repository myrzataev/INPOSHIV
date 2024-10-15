// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_survey_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerSurveyResponseModelImpl _$$CustomerSurveyResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerSurveyResponseModelImpl(
      legalStatus: json['legalStatus'] as String?,
      trustLevel: json['trustLevel'] as String?,
      companySize: (json['companySize'] as num?)?.toInt(),
      companyName: json['companyName'] as String?,
      marketExperience: (json['marketExperience'] as num?)?.toInt(),
      salesAddress: json['salesAddress'] as String?,
      linkToAddress: json['linkToAddress'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$CustomerSurveyResponseModelImplToJson(
        _$CustomerSurveyResponseModelImpl instance) =>
    <String, dynamic>{
      'legalStatus': instance.legalStatus,
      'trustLevel': instance.trustLevel,
      'companySize': instance.companySize,
      'companyName': instance.companyName,
      'marketExperience': instance.marketExperience,
      'salesAddress': instance.salesAddress,
      'linkToAddress': instance.linkToAddress,
      'city': instance.city,
    };
