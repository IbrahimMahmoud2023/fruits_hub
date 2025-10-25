import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/custom_text_form_filed.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormFiled(
            textInputType: TextInputType.text,
            hintText: 'الاسم كامل',
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            textInputType: TextInputType.emailAddress,
            hintText: 'االبريد الإلكتروني',
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            textInputType: TextInputType.text,
            hintText: 'العنوان',
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            textInputType: TextInputType.text,
            hintText: 'المدينه',
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            textInputType: TextInputType.number,
            hintText: 'رقم الطابق , رقم الشقه ..',
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            textInputType: TextInputType.number,
            hintText: 'رقم الهاتف',
          ),
        ],
      ),
    );
  }
}
