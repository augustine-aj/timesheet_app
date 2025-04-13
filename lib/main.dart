import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'features/auth/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final http.Client _httpClient = http.Client();

  @override
  Widget build(BuildContext context) {
    final authRemoteDataSource = AuthRemoteDataSource(_httpClient);
    final authRepository = AuthRepositoryImpl(authRemoteDataSource);
    final loginUserUseCase = LoginUserUseCase(authRepository);

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => AuthBloc(loginUserUseCase)),
      ],
      child: MaterialApp(
        title: 'Auth App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginPage(),
      ),
    );
  }
}
