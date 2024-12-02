import 'package:inposhiv/core/error/error_types.dart';

class AppError {
  final String userMessage;
  final String? technicalDetails;
  final ErrorType type;

  AppError({
    required this.userMessage,
    this.technicalDetails,
    required this.type,
  });
}
