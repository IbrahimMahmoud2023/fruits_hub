import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/services/git_it_services.dart';
import 'package:fruits_ecommerec/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_ecommerec/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = 'signup_view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(context, title: 'حساب جديد'),
        body: SignUpViewBodyConsumer(),
      ),
    );
  }
}

