import 'dart:convert';

import 'package:fruits_ecommerec/core/services/shared_prefrence_singleton.dart';
import 'package:fruits_ecommerec/core/utils/backend_point.dart';
import 'package:fruits_ecommerec/features/auth/data/models/user_model.dart';
import 'package:fruits_ecommerec/features/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(BackEndEndPoint.kUserData);
  if (jsonString == null) {
    throw Exception("لا يوجد بيانات مستخدم محفوظة");
  }
  var userEntity = UserModel.fromJson(json: jsonDecode(jsonString));
  print("اسم المستخدم: ${userEntity.name}");
  return userEntity;
}
