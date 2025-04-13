import '../../auth.dart';

class LogoutUseCase {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  // Future call() async {
  //   return await repository.logout();
  // }
}
