import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/terms_and_condation.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_text_form_filed.dart';


class SignupViewBody extends StatelessWidget {

  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormFiled(
              textInputType: TextInputType.name,
              hintText: 'الاسم كامل',
            ),
            SizedBox(height: 16),
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
            SizedBox(
              height: 16,
            ),
            TermsAndCondition(),
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: CustomButton(text: 'إنشاء حساب جديد'),
            ),
            SizedBox(
              height: 26,
            ),
            HaveAnAccount()

          ],
        ),
      ),
    );
  }
}
