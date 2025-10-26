import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/custom_text_form_filed.dart';

import '../../../domain/entites/order_entity.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key, required this.formKey, required this.valueListenable});
  final GlobalKey<FormState> formKey ;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormFiled(
                onSaved: (value){
                  context.read<OrderEntity>().addressShipping!.name = value;
                },
                textInputType: TextInputType.text,
                hintText: 'الاسم كامل',
              ),
              SizedBox(height: 16),
              CustomTextFormFiled(
                onSaved: (value){
                  context.read<OrderEntity>().addressShipping!.email = value;
                },
                textInputType: TextInputType.emailAddress,
                hintText: 'االبريد الإلكتروني',
              ),
              SizedBox(height: 16),
              CustomTextFormFiled(
                onSaved: (value){
                  context.read<OrderEntity>().addressShipping!.address = value;
                },
                textInputType: TextInputType.text,
                hintText: 'العنوان',
              ),
              SizedBox(height: 16),
              CustomTextFormFiled(
                onSaved: (value){
                  context.read<OrderEntity>().addressShipping!.city = value;
                },
                textInputType: TextInputType.text,
                hintText: 'المدينه',
              ),
              SizedBox(height: 16),
              CustomTextFormFiled(
                onSaved: (value){
                  context.read<OrderEntity>().addressShipping!.address2 = value;
                },
                textInputType: TextInputType.number,
                hintText: 'رقم الطابق , رقم الشقه ..',
              ),
              SizedBox(height: 16),
              CustomTextFormFiled(
                onSaved: (value){
                  context.read<OrderEntity>().addressShipping!.phone = value;
                },
                textInputType: TextInputType.number,
                hintText: 'رقم الهاتف',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
