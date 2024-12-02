import 'package:flutter/foundation.dart';

class Logger {
  /// Logs informational messages (e.g., app flow, state changes)
  static void info(String message) {
    if (kDebugMode) {
      print('[INFO]: $message');
    }
  }

  /// Logs warnings (e.g., recoverable issues or unexpected behavior)
  static void warning(String message) {
    if (kDebugMode) {
      print('[WARNING]: $message');
    }
  }

  /// Logs errors (e.g., exceptions or critical issues)
  static void error(String message, [Object? exception, StackTrace? stackTrace]) {
    if (kDebugMode) {
      print('[ERROR]: $message');
      if (exception != null) print('Exception: $exception');
      if (stackTrace != null) print('StackTrace: $stackTrace');
    }

    // Optional: Send logs to external monitoring services in release mode
    if (!kDebugMode) {
      _sendToCrashlytics(message, exception, stackTrace);
    }
  }

  /// Logs debug messages (e.g., verbose details useful during development)
  static void debug(String message) {
    if (kDebugMode) {
      print('[DEBUG]: $message');
    }
  }

  /// Send errors to a remote logging or crash reporting tool (e.g., Firebase Crashlytics)
  static void _sendToCrashlytics(String message, [Object? exception, StackTrace? stackTrace]) {
    // Example: Replace with actual Crashlytics/Sentry integration
    // FirebaseCrashlytics.instance.log(message);
    // if (exception != null) {
    //   FirebaseCrashlytics.instance.recordError(exception, stackTrace);
    // }

    // For now, just simulate sending to external service
    print('[REMOTE LOG]: $message');
  }
}
