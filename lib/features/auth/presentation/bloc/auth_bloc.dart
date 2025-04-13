import 'package:flutter_bloc/flutter_bloc.dart';
import '../../auth.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUserUseCase loginUserUseCase;

  AuthBloc(this.loginUserUseCase) : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await loginUserUseCase(event.email, event.password);
        emit(Authenticated(user));
      } catch (e) {
        print('error here i am');
        emit(AuthError('Login failed'));
      }
    });

    on<LogoutRequested>((event, emit) async {
      // Implement logout logic if necessary
      emit(AuthInitial());
    });
  }
}
