import 'package:dio/dio.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:inposhiv/features/main/orders/customer/data/models/order_details_model.dart';

class SendOrderDetailsDs {
  final Dio dio;
  SendOrderDetailsDs({required this.dio});

  Future<OrderDetailsModel> sendOrderDetails({
    required Map<String, dynamic> orderDetails,
    required String orderId,
  }) async {
    // Convert file paths in technicalDocumentUrls and lekalaDocumentUrls
    final formDataMap = Map<String, dynamic>.from(orderDetails);

    // Handle files for technical documents
    if (formDataMap['technicalDocuments'] != null) {
      formDataMap['technicalDocuments'] = await Future.wait(
        (formDataMap['technicalDocuments'] as List<String?>).map(
          (filePath) async => filePath != null
              ? await MultipartFile.fromFile(filePath,
                  filename: filePath.split('/').last)
              : null,
        ),
      );
    }

    // Handle files for lekala documents
    if (formDataMap['lekalaDocuments'] != null) {
      formDataMap['lekalaDocuments'] = await Future.wait(
        (formDataMap['lekalaDocuments'] as List<String?>).map(
          (filePath) async => filePath != null
              ? await MultipartFile.fromFile(filePath,
                  filename: filePath.split('/').last)
              : null,
        ),
      );
    }
    if (formDataMap['agreements'] != null) {
      formDataMap['agreements'] = await Future.wait(
        (formDataMap['agreements'] as List<String?>).map(
          (filePath) async => filePath != null
              ? await MultipartFile.fromFile(filePath,
                  filename: filePath.split('/').last)
              : null,
        ),
      );
    }
    // Prepare FormData
    // Prepare FormData
    final formData = FormData.fromMap(formDataMap);

// Debug: Print FormData fields and files
    formData.fields.forEach((field) {
      print("Field: ${field.key} = ${field.value}");
    });

    formData.files.forEach((file) {
      print(
          "File: ${file.key} = ${file.value.filename}, ${file.value.contentType}");
    });

    // Send request
    final Response response = await dio.post(
      "${UrlRoutes.createOrder}/$orderId/details",
      data: formData,
      options: Options(headers: {"Content-Type": "multipart/form-data"}),
    );

    // Return parsed response
    return OrderDetailsModel.fromJson(response.data);
  }
}
