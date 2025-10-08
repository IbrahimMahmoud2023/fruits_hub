import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/signup_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'حساب جديد'),
      body: SignupViewBody(),
    );
  }
}
