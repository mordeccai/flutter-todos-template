import 'package:flutter/material.dart';
import 'package:todos/data/database.dart';
import 'package:todos/routes.dart';
import 'package:todos/services/auth_service.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigate() {
    if (authService.isLoggedIn) {
      Navigator.pushReplacementNamed(context, RouteConfig.home);
    } else {
      Navigator.pushReplacementNamed(context, RouteConfig.login);
    }
  }

  void initDatabase() async {
    await db.init();
    await Future.delayed(Duration(seconds: 1), navigate);
  }

  @override
  void initState() {
    super.initState();
    initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "AN AWESOME APP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
