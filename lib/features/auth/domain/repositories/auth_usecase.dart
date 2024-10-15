import 'package:inposhiv/features/auth/data/models/user_model.dart';
import 'package:inposhiv/features/auth/domain/entities/user_entity.dart';

abstract interface class AuthRepo {
  Future<UserEntity> auth({required UserModel userModel});
}