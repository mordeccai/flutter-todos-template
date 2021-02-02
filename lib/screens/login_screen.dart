import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:todos/routes.dart';
import 'package:todos/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  login() {
    if (formKey.currentState.validate()) {
      authService
          .login(
        email: emailCtrl.text.trim(),
        password: passwordCtrl.text.trim(),
      )
          .then((response) {
        if (authService.isLoggedIn) {
          Navigator.pushReplacementNamed(context, RouteConfig.home);
        }
      }).catchError((error) {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(EvaIcons.email),
                  ),
                ),
                TextFormField(
                  controller: passwordCtrl,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(EvaIcons.eyeOffOutline),
                  ),
                ),
                MaterialButton(
                  onPressed: login,
                  child: Text("LOGIN"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
