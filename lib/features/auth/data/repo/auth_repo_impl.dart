import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/core/services/firebase_auth_services.dart';
import 'package:fruits_ecommerec/features/auth/data/models/user_model.dart';
import 'package:fruits_ecommerec/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerec/features/auth/domain/repo/auth_repo.dart';
import '../../../../core/errors/execption.dart';

class AuthRepoImpl extends AuthRepo {
  FirebaseAuthServices firebaseAuthServices;
  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()} ',
      );
      return left(
        ServerFailure(errorMessage: 'there was an error, please tyr again'),
      );
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()} ',
      );
      return left(
        ServerFailure(errorMessage: 'there was an error, please tyr again'),
      );
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()} ',
      );
      return left(
        ServerFailure(errorMessage: 'there was an error, please tyr again'),
      );
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithFaceBook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()} ',
      );

      return left(
        ServerFailure(errorMessage: 'there was an error, please tyr again'),
      );
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithApple() async {
    try {
      var user = await firebaseAuthServices.signInWithApple();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()} ',
      );
      return left(
        ServerFailure(errorMessage: 'there was an error, please tyr again'),
      );
    }
  }
}
