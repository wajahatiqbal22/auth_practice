import 'package:auth_practice/models/user_model.dart';

abstract class Db {
  Future<UserModel> createUser(String id, UserModel user);
}
