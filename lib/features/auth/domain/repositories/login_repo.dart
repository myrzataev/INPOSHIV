import 'package:inposhiv/features/auth/domain/entities/login_entity.dart';

abstract interface class LoginRepo {
  Future<LoginEntity> login(
      {required String phoneNumber, required String password});
}
