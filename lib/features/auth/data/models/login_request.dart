class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});
  final mockEmail = 'ishtechdeveloper10+team1@gmail.com';
  final mockPassword = '123456';
  Map<String, dynamic> toJson() => {
    'email': mockEmail,
    'password': mockPassword,
  };
}
