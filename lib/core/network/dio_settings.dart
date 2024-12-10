import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:inposhiv/core/consts/url_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioSettings {
  SharedPreferences preferences;
  DioSettings({required this.preferences}) {
    unawaited(setup());
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: 
      "http://192.168.31.95:8080/",
      // "https://24redirect.ru/",
      contentType: "application/json",
      
      headers: {
        "Accept": "application/json",
      },
      connectTimeout: const Duration(seconds: 40),
      receiveTimeout: const Duration(seconds: 40),
    ),
  );

  Future<void> setup() async {
    final Interceptors interceptors = dio.interceptors;

    // Add the access token to all requests
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Retrieve the current access token from SharedPreferences
          String? accessToken = preferences.getString("accessToken");

          if (accessToken != null && accessToken.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $accessToken';
          }
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401) {
            // If a 401 response is received, attempt to refresh the access token
            String newAccessToken = await _refreshToken();

            // Update the request with the new access token
            e.requestOptions.headers['Authorization'] =
                'Bearer $newAccessToken';

            // Retry the failed request
            final Response retryResponse = await dio.fetch(e.requestOptions);
            return handler.resolve(retryResponse); // Return the new response
          }
          return handler.next(e); // Forward any other errors
        },
      ),
    );

    // Add logging for debug builds
    final LogInterceptor logInterceptor = LogInterceptor(
      requestBody: true,
      responseBody: true,
    );

    interceptors.addAll([if (kDebugMode) logInterceptor]);
  }

  // Function to handle token refresh
  Future<String> _refreshToken() async {
    // Use the refresh token stored in SharedPreferences to get a new access token
    final refreshToken = preferences.getString("refreshToken");

    final Response response = await dio.post(
      UrlRoutes.refresh,
      queryParameters: {
        "refreshToken": refreshToken,
      },
    );

    // Assuming the response contains new tokens
    String newAccessToken = response.data["token"];
    String newRefreshToken = response.data["refreshToken"];

    // Store the new tokens in SharedPreferences for future use
    await preferences.setString("token", newAccessToken);
    await preferences.setString("refreshToken", newRefreshToken);

    return newAccessToken;
  }
}
