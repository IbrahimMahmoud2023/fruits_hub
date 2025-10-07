import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/login_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
 static const String routeName = 'login_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,title: 'تسجيل الدخول'),
      body: LoginViewBody(),
    );
  }


}
