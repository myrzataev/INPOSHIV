import 'package:dio/dio.dart';
import 'package:inposhiv/core/error/app_error.dart';
import 'package:inposhiv/core/error/error_types.dart';

AppError handleException(Object exception) {
  if (exception is DioException) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return AppError(
          userMessage: 'Время ожидания истекло. Попробуйте снова.',
          technicalDetails: exception.message,
          type: ErrorType.timeout,
        );
      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode ?? 0;
        if (statusCode == 400) {
          return AppError(
            userMessage: 'Некорректный запрос. Проверьте введенные данные.',
            technicalDetails: exception.message,
            type: ErrorType.validation,
          );
        } else if (statusCode == 401) {
          return AppError(
            userMessage:
                'Неверный номер телефона или пароль. Попробуйте снова.',
            type: ErrorType.authorization,
          );
        } else if (statusCode == 403) {
          return AppError(
            userMessage:
                'Неверный номер телефона или пароль. Попробуйте снова.',
            type: ErrorType.authorization,
          );
        } else if (statusCode == 404) {
          return AppError(
            userMessage: 'Ресурс не найден. Проверьте запрос.',
            technicalDetails: exception.message,
            type: ErrorType.notFound,
          );
        } else if (statusCode == 422) {
          return AppError(
            userMessage:
                'Ошибка валидации. Проверьте введенные данные и попробуйте снова.',
            technicalDetails: exception.message,
            type: ErrorType.validation,
          );
        } else if (statusCode >= 500) {
          return AppError(
            userMessage: 'На сервере произошла ошибка. Попробуйте позже.',
            technicalDetails: exception.message,
            type: ErrorType.server,
          );
        }
        return AppError(
          userMessage: 'Неожиданный ответ сервера. Попробуйте позже.',
          technicalDetails: exception.message,
          type: ErrorType.server,
        );
      case DioExceptionType.cancel:
        return AppError(
          userMessage: 'Запрос был отменен. Попробуйте снова.',
          technicalDetails: exception.message,
          type: ErrorType.client,
        );
      case DioExceptionType.connectionError:
        return AppError(
          userMessage: 'Ошибка подключения. Проверьте интернет-соединение.',
          technicalDetails: exception.message,
          type: ErrorType.network,
        );
      case DioExceptionType.unknown:
      default:
        return AppError(
          userMessage:
              'Произошла неизвестная ошибка. Проверьте ваше интернет-соединение.',
          technicalDetails: exception.message,
          type: ErrorType.unknown,
        );
    }
  } else if (exception is FormatException) {
    return AppError(
      userMessage: 'Ошибка формата данных. Свяжитесь с поддержкой.',
      technicalDetails: exception.toString(),
      type: ErrorType.client,
    );
  } else if (exception is AssertionError) {
    return AppError(
      userMessage: 'Внутренняя ошибка. Обратитесь в службу поддержки.',
      technicalDetails: exception.toString(),
      type: ErrorType.client,
    );
  } else if (exception is TypeError) {
    return AppError(
      userMessage: 'Ошибка данных. Проверьте данные и попробуйте снова.',
      technicalDetails: exception.toString(),
      type: ErrorType.client,
    );
  } else {
    return AppError(
      userMessage: 'Произошла непредвиденная ошибка. Попробуйте позже.',
      technicalDetails: exception.toString(),
      type: ErrorType.unknown,
    );
  }
}
