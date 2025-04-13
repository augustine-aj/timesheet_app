import '../../auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<UserEntity> login(String email, String password) async {
    final response = await remoteDataSource.login(
      LoginRequest(email: email, password: password),
    );
    return response.user;
  }

  // @override
  // Future<void> logout() async {
  //   try {
  //     final message = await remoteDataSource.logout();
  //     return Right(message);
  //   } catch (e) {
  //     return Left(ServerFailure(e.toString()));
  //   }
  // }
}
