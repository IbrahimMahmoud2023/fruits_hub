import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/custom_password_field.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../cubits/signin_cubit/sign_in_cubit.dart';
import 'custom_text_form_filed.dart';
import 'donot_have_an_account.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  GlobalKey<FormState> fromKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: fromKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormFiled(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الاليكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: CustomButton(
                  onPressed: () {
                    if (fromKey.currentState!.validate()) {
                      fromKey.currentState!.save();
                      context.read<SignInCubit>().signInWithEmailAndPassword(
                        email,
                        password,
                      );
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'تسجيل دخول',
                ),
              ),
              SizedBox(height: 33),
              const DoNotHaveAnAccount(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: (){
                  context.read<SignInCubit>().signInWithGoogle();
                },
                image: Assets.imagesGoogleIcon,
                text: 'تسجيل بواسطه جوجل',
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: (){
                  context.read<SignInCubit>().signInWithFaceBook();
                },
                image: Assets.imagesFacebookIcon,
                text: 'تسجيل بواسطه فيس بوك',
              ),
              SizedBox(height: 16),
             Platform.isIOS ? SocialLoginButton(
                onPressed: (){
                  context.read<SignInCubit>().signInWithApple();
                },
                image: Assets.imagesAppleIcon,
                text: 'تسجيل بواسطه أبل',
              ):SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
