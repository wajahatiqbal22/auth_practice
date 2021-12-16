import 'package:auth_practice/models/user_model.dart';

abstract class AuthRepo {
  Future<UserModel> signUpWithEmailPassword(
      {required UserModel user, required String password});
  Future<UserModel> loginWithEmailPassword(
      {required String email, required String password});
  Future<void> signOut();
  Future<UserModel> checkCurrentUser();
}
