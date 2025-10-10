import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerec/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(String email, String password) {

    throw UnimplementedError();
  }

}