import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/services/git_it_services.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_ecommerec/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_ecommerec/features/auth/presentation/cubits/signin_cubit/sign_in_state.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const String routeName = 'login_view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'تسجيل الدخول'),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}


