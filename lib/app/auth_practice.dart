import 'package:auth_practice/routes/routes.dart';

import 'package:flutter/material.dart';

class AuthPractice extends StatelessWidget {
  const AuthPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: Routes.routesData(context),
    );
  }
}
