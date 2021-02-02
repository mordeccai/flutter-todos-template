import 'package:todos/screens/home_screen.dart';
import 'package:todos/screens/login_screen.dart';
import 'package:todos/screens/splash_screen.dart';

var routes = {
  RouteConfig.defaultRoute: (context) => SplashScreen(),
  RouteConfig.login: (context) => LoginScreen(),
  RouteConfig.home: (context) => HomeScreen(),
};

class RouteConfig {
  static final defaultRoute = "/";
  static final login = "/login";
  static final home = "/home";
}
