import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/routes.dart';
import 'package:todos/services/auth_service.dart';
import 'package:todos/widgets/circular_material_spinner.dart';

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
                Selector<AuthService, bool>(
                  selector: (context, authService) => authService.isLoggingIn,
                  builder: (context, isLoggingIn, _) {
                    return _LoginButton(
                      loading: isLoggingIn,
                      onSubmit: login,
                    );
                  },
                ),
                /*Consumer<AuthService>(
                  builder: (context, authService,_) {
                    return _LoginButton(
                      loading: authService.isLoggingIn,
                      onSubmit: login,
                    );
                  },
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  bool loading;
  Function onSubmit;

  _LoginButton({this.loading, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: MaterialButton(
        disabledColor: Color(0xFFdfdfdf),
        onPressed: loading ? null : onSubmit,
        child: CircularMaterialSpinner(
          loading: loading,
          color: Colors.grey,
          width: 25.0,
          height: 25.0,
          strokeWidth: 4.0,
          child: Text(
            "SIGN IN",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
        color: loading ? Color(0xFFdfdfdf) : Theme.of(context).primaryColor,
        height: 50.0,
        minWidth: MediaQuery.of(context).size.width,
      ),
    );
  }
}
