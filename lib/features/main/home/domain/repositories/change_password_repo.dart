import 'package:dartz/dartz.dart';

abstract interface class ChangePasswordRepo {
  Future<Either<String, String>> changePassword(Map<String, dynamic> body);
}
