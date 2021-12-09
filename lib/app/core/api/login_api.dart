import 'dart:convert';
import 'package:test_selecti_dev/app/core/api/api_response.dart';
import 'package:http/http.dart' as http;
import 'package:test_selecti_dev/app/core/requests/usuario.dart';

class LoginApi {
  static Future<ApiResponse<Usuario?>?> login(
      {String? login, String? password}) async {
    try {
      final String url = "https://carros-springboot.herokuapp.com/api/v2/login";
      final Uri url1 = Uri.parse(url);
      Map<String, String> headers = {
        "Content-Type": "application/json",
      };

      Map params = {
        'username': login,
        'password': password,
      };
      String s = json.encode(params);

      var response = await http.post(url1, body: s, headers: headers);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      Map<String, dynamic> mapResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final user = Usuario.fromJson(mapResponse);

        return ApiResponse.ok(user);
      }
      print(mapResponse["error"]);

      return ApiResponse.error(mapResponse["error"]);
    } catch (error) {
      print("erro lo login $error");
      return ApiResponse.error('teste');
    }
  }
}
