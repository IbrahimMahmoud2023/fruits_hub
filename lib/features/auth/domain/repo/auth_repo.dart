import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entites/user_entity.dart';

abstract class AuthRepo {

  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(String email, String password,String name);
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(String email, String password);
}


