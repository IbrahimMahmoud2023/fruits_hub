import 'package:flutter/material.dart';

import 'custom_text_form_filed.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormFiled(
            hintText: 'البريد الاليكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            textInputType: TextInputType.visiblePassword,
            hintText: 'كلمه المرور',
            iconSuffix: Icon(Icons.visibility, color: Color(0xFFCBD0D1)),
          ),
        ],
      ),
    );
  }
}
