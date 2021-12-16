import 'package:auth_practice/routes/routes.dart';
import 'package:auth_practice/screens/home_screen.dart';
import 'package:auth_practice/screens/login_screen.dart';
import 'package:auth_practice/screens/register_screen.dart';
import 'package:flutter/material.dart';

class AuthPractice extends StatelessWidget {
  const AuthPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: Routes.routesData(context),
    );
  }
}
