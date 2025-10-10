import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerec/features/auth/domain/repo/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    emit(SignupLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      email,
      password,
      name,
    );
    result.fold(
      (failure) => emit(SignupFailure(errorMessage: failure.errorMessage)),
      (userEntity) => emit(SignupSuccess(userEntity: userEntity)),
    );
  }
}
