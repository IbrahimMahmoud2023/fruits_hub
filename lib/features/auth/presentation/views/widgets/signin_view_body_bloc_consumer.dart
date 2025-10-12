import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';
import '../../../../../core/widgets/custom_progress_hud.dart';
import '../../cubits/signin_cubit/sign_in_cubit.dart';
import '../../cubits/signin_cubit/sign_in_state.dart';
import 'sign_in_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          showSnackBar(context, 'تم تسجيل الدخول بنجاح', Colors.green);
        }
        if (state is SignInFailure) {
          showSnackBar(context, state.errorMessage,Colors.red);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SignInLoading ? true : false,
          child: SignInViewBody(),
        );
      },
    );
  }
}

