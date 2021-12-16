import 'dart:js';

import 'package:auth_practice/screens/home_screen.dart';
import 'package:auth_practice/screens/login_screen.dart';
import 'package:auth_practice/screens/register_screen.dart';
import 'package:auth_practice/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static const String login = '/loginPage';
  static const String register = '/registerPage';
  static const String home = '/homePage';
  static const String splashScreen = '/splashScreen';

  static routesData(BuildContext context) => {
        "/": (context) => SplashScreen(),
        Routes.login: (context) => LoginScreen(),
        Routes.register: (context) => RegisterScreen(),
        Routes.home: (context) => HomeScreen(),
      };
}
