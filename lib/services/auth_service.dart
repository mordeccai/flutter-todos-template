import 'package:flutter/cupertino.dart';
import 'package:todos/api/api.dart';
import 'package:todos/data/database.dart';
import 'package:todos/data/models/auth_data.dart';

class AuthService extends ChangeNotifier {
  bool _isLoggingIn = false;

  bool get isLoggingIn => _isLoggingIn;

  set isLoggingIn(bool value) {
    _isLoggingIn = value;
    notifyListeners();
  }

  bool get isLoggedIn => db.authDataBox.isNotEmpty;
  AuthData get authData => db.authDataBox.getAt(0);

  Future login({String email, String password}) {
    isLoggingIn = true;
    return api.login(email, password).then((response) {
      _saveAuthData(response.data["payload"]);
      isLoggingIn = false;
      return response;
    }).catchError((error) {
      isLoggingIn = false;
      return throw error;
    });
  }

  void _saveAuthData(data) {
    db.authDataBox.add(AuthData.fromMap(data));
  }

  Future<bool> logout() async {
    await db.clearData();
    return true;
  }
}

var authService = AuthService();
