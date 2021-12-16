import 'package:auth_practice/screens/home_screen.dart';
import 'package:auth_practice/screens/login_screen.dart';

import 'package:auth_practice/screens/signup_screen.dart';
import 'package:auth_practice/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static const String login = '/loginPage';
  static const String signupScreen = '/registerPage';
  static const String home = '/homePage';
  static const String splashScreen = '/splashScreen';

  static routesData(BuildContext context) => {
        "/": (context) => const SplashScreen(),
        Routes.login: (context) => const LoginScreen(),
        Routes.signupScreen: (context) => const SignUp(),
        Routes.home: (context) => const HomeScreen(),
      };
}
