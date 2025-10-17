import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerec/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.password,
    required super.uId,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
      password: null,
    );
  }

  factory UserModel.fromJson({required Map<String, dynamic> json}) {
    return UserModel(name: 'name', email: 'email', uId: 'uId', password: null);
  }

  factory UserModel.formEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      uId: user.uId,
      password: '',
    );
  }

  toMap() {
    return {'name': name, 'email': email, 'uId': uId};
  }
}
