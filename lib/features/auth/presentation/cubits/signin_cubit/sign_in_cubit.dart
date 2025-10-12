import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/cubits/signin_cubit/sign_in_state.dart';

import '../../../domain/repo/auth_repo.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepo authRepo;
  SignInCubit(this.authRepo) : super(SignInInitial());
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(SignInLoading());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SignInFailure(errorMessage: failure.errorMessage)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithGoogle();

    result.fold(
      (failure) => emit(SignInFailure(errorMessage: failure.errorMessage)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithFaceBook() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithFaceBook();

    result.fold(
      (failure) => emit(SignInFailure(errorMessage: failure.errorMessage)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithApple() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithApple();

    result.fold(
      (failure) => emit(SignInFailure(errorMessage: failure.errorMessage)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }
}
