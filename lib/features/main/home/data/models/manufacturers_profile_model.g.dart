// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManufacturersProfileModelImpl _$$ManufacturersProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ManufacturersProfileModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userUuid: json['userUuid'] as String?,
      manufacturerUuid: json['manufacturerUuid'] as String?,
      username: json['username'] as String?,
      legalStatus: json['legalStatus'] as String?,
      trustLevel: json['trustLevel'] as String?,
      companyName: json['companyName'] as String?,
      city: json['city'] as String?,
      monthProductsVolume: (json['monthProductsVolume'] as num?)?.toInt(),
      companyDescription: json['companyDescription'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      clothingCategoriesList: (json['clothingCategoriesList'] as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
      manufacturerPrioritiesList: (json['manufacturerPrioritiesList']
              as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderHistory: (json['orderHistory'] as List<dynamic>?)
          ?.map((e) => OrderHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      photosUrls: (json['photosUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ManufacturersProfileModelImplToJson(
        _$ManufacturersProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userUuid': instance.userUuid,
      'manufacturerUuid': instance.manufacturerUuid,
      'username': instance.username,
      'legalStatus': instance.legalStatus,
      'trustLevel': instance.trustLevel,
      'companyName': instance.companyName,
      'city': instance.city,
      'monthProductsVolume': instance.monthProductsVolume,
      'companyDescription': instance.companyDescription,
      'rating': instance.rating,
      'clothingCategoriesList': instance.clothingCategoriesList,
      'manufacturerPrioritiesList': instance.manufacturerPrioritiesList,
      'orderHistory': instance.orderHistory,
      'reviews': instance.reviews,
      'photosUrls': instance.photosUrls,
    };

_$ClothingCategoriesListImpl _$$ClothingCategoriesListImplFromJson(
        Map<String, dynamic> json) =>
    _$ClothingCategoriesListImpl(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map(
              (e) => ClothingCategoriesList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClothingCategoriesListImplToJson(
        _$ClothingCategoriesListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'subcategories': instance.subcategories,
    };

_$OrderHistoryImpl _$$OrderHistoryImplFromJson(Map<String, dynamic> json) =>
    _$OrderHistoryImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      status: json['status'] as String?,
      orderName: json['orderName'] as String?,
    );

Map<String, dynamic> _$$OrderHistoryImplToJson(_$OrderHistoryImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'status': instance.status,
      'orderName': instance.orderName,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      customerUuid: json['customerUuid'] as String?,
      manufacturerUuid: json['manufacturerUuid'] as String?,
      reviewText: json['reviewText'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      rating: (json['rating'] as num?)?.toInt(),
      customerName: json['customerName'] as String?,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'customerUuid': instance.customerUuid,
      'manufacturerUuid': instance.manufacturerUuid,
      'reviewText': instance.reviewText,
      'createdAt': instance.createdAt?.toIso8601String(),
      'rating': instance.rating,
      'customerName': instance.customerName,
    };
