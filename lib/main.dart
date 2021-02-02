import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/config.dart';
import 'package:todos/routes.dart';
import 'package:todos/services/auth_service.dart';

void main() {
  runApp(TodosApp());
}

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: authService),
      ],
      child: MaterialApp(
        title: 'Todos',
        theme: Config.theme,
        initialRoute: RouteConfig.defaultRoute,
        routes: routes,
      ),
    );
  }
}
