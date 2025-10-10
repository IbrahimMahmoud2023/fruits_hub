import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/terms_and_condation.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_password_field.dart';
import 'custom_text_form_filed.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool isTermsChecked = false;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String name, email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormFiled(
                onSaved: (value) {
                  name = value!;
                },
                textInputType: TextInputType.name,
                hintText: 'الاسم كامل',
              ),
              SizedBox(height: 16),
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
              TermsAndCondition(
                isChecked: isTermsChecked,
                onChanged: (value) {
                  setState(() {
                    isTermsChecked = value;
                  });
                },
              ),
              SizedBox(height: 42),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: CustomButton(
                  onPressed: () {
                    if (isTermsChecked) {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                              email,
                              password,
                              name,
                            );
                      } else {
                        setState(() {
                          autoValidateMode = AutovalidateMode.always;
                        });
                      }
                    } else {
                      showSnackBar(context, 'يجب الموافقة على الشروط والأحكام أولاً!');
                    }
                  },
                  text: 'إنشاء حساب جديد',
                ),
              ),
              SizedBox(height: 26),
              HaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
