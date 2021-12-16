import 'package:auth_practice/models/user_model.dart';
import 'package:auth_practice/repo/auth/auth_repo.dart';
import 'package:auth_practice/repo/db/db_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DbRepo db = DbRepo();
  @override
  Future<UserModel> checkCurrentUser() {
    // TODO: implement checkCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> loginWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUpWithEmailPassword(
      {required UserModel user, required String password}) async {
    try {
      UserCredential userCreds =
          await firebaseAuth.createUserWithEmailAndPassword(
              email: user.email, password: password);
      user.uid = userCreds.user!.uid;
      await db.createUser(userCreds.user!.uid, user);
      return user;
    } on FirebaseAuthException catch (e, s) {
      throw (e);
    }
  }
}
