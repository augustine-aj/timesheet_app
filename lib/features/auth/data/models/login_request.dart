class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});
  final mockEmail = '';
  final mockPassword = '';
  Map<String, dynamic> toJson() => {
    'email': mockEmail,
    'password': mockPassword,
  };
}
