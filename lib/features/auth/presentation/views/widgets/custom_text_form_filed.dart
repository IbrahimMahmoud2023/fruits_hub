import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

import '../../../../../constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.textInputType,
    this.iconSuffix,
    required this.hintText,
  });
  final TextInputType textInputType;
  final Widget? iconSuffix;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: iconSuffix,
          hintText: hintText,
          hintStyle: AppTextStyles.semibold20.copyWith(
            color: Color(0xFF9DA5A6),
          ),
          fillColor: Color(0xFFF9FAFA),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: Color(0xFFEBEDED)),
    );
  }
}
