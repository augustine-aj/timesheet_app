import '../../auth.dart';

abstract class AuthRepository {
  Future<UserEntity> login(String email, String password);
  //Future<void> logout();
}
