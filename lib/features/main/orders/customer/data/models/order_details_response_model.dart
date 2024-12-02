import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_details_response_model.freezed.dart';
part 'order_details_response_model.g.dart';

@freezed
class OrderDetailsResponseModel with _$OrderDetailsResponseModel {
    const factory OrderDetailsResponseModel({
        int? orderId,
        String? productName,
        int? material,
        String? color,
        int? quantity,
        dynamic technicalDocuments,
        dynamic lekalaDocuments,
        dynamic agreements,
        String? deadlineStart,
        String? deadlineEnd,
        dynamic discount,
        String? deliveryPoint,
        List<String>? technicalDocumentUrls,
        List<String>? lekalaDocumentUrls,
        List<dynamic>? agreementUrls,
        dynamic manufacturerUuid,
        List<int>? deadlineStartAsLocalDate,
        List<int>? deadlineEndAsLocalDate,
    }) = _OrderDetailsResponseModel;

    factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsResponseModelFromJson(json);
}
