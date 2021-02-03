import 'package:flutter/material.dart';
import 'package:todos/data/database.dart';
import 'package:todos/services/auth_service.dart';
import 'package:todos/dialogs/confirm_dialog.dart';
import 'package:todos/routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  logout() async {
    var confirmed = await showConfirm(
      context,
      title: "Logout?",
    );
    if (confirmed) {
      authService.logout().then((value) {
        if (value) Navigator.pushReplacementNamed(context, RouteConfig.login);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: logout,
            )
          ],
        ),
        body: Container(
          child: Text(
            "WELCOME ${authService.authData?.user?.name ?? ""}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
