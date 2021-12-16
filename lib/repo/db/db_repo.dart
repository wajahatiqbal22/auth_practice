import 'package:auth_practice/models/user_model.dart';
import 'package:auth_practice/repo/db/db.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DbRepo extends Db {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<UserModel> createUser(String id, UserModel user) async {
    try {
      await firestore.collection('users').doc(id).set(user.toJson());
      return user;
    } on FirebaseException catch (e, stk) {
      throw (e);
    }
  }
}
