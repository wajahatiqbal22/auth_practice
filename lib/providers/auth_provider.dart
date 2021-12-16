import 'package:auth_practice/models/user_model.dart';
import 'package:auth_practice/repo/auth/auth_repo_impl.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  UserModel? CurrentUser;
  AuthRepoImpl auth = AuthRepoImpl();
  Future<void> loginWithEmailPass(BuildContext context,
      {required String email, required String password}) async {}

  Future<void> signUpWithEmailPass(BuildContext context,
      {required String name,
      required String email,
      required String password}) async {
    UserModel user = UserModel(uid: "", name: name, email: email);
    user = await auth.signUpWithEmailPassword(user: user, password: password);
    CurrentUser = user;
  }

  Future<void> loginWithGoogle(BuildContext context,
      {required String email, required String password}) async {}
  Future<void> loginWithFacebook(BuildContext context,
      {required String email, required String password}) async {}
}
