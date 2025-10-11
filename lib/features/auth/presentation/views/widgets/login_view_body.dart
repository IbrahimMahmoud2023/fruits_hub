import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import 'custom_text_form_filed.dart';
import 'donot_have_an_account.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppTextStyles.bold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: CustomButton(text: 'تسجيل دخول'),
            ),
            SizedBox(height: 33),
            const DoNotHaveAnAccount(),
            SizedBox(height: 33),
           OrDivider(),
          SizedBox(
            height: 16,
          ),
          SocialLoginButton(
            image: Assets.imagesGoogleIcon,
            text: 'تسجيل بواسطه جوجل',
          ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
            image: Assets.imagesFacebookIcon,
            text: 'تسجيل بواسطه فيس بوك',
          ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
            image: Assets.imagesAppleIcon,
            text: 'تسجيل بواسطه أبل',
          ),
          ],
        ),
      ),
    );
  }
}



