import 'package:todos/config.dart';

import 'dio_api.dart';

class Api extends DioApi {
  Api() : super(Config.apiUrl);

  Future login(String email, String password) async {
    return dio.post("/login", data: {
      "email": email,
      "password": password,
    });
  }
}

Api api = Api();
