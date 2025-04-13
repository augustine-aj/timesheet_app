import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../auth.dart';
import '../../../../core/core.dart';

class AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSource(this.client);

  Future<LoginResponse> login(LoginRequest request) async {
    final response = await client.post(
      Uri.parse(loginUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(request.toJson()),
    );
    print(response.body);
    if (response.statusCode == 200) {
      print('status is ok');
      print(response.statusCode);
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      print('printing error here..');
      throw Exception('Failed to login');
    }
  }

  // Future<String> logout() async {
  //   final response = await client.get(
  //     Uri.parse("http://44.233.110.170/api/logout"),
  //     headers: {
  //       "Accept": "application/json",
  //       "Authorization": "Bearer YOUR_TOKEN_HERE",
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     return json.decode(response.body)["message"];
  //   } else {
  //     throw Exception('Failed to logout');
  //   }
  // }
}
