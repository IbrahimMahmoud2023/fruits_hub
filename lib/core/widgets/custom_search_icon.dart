import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';

import '../../generated/assets.dart';
import '../utils/app_style_text.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 9,
                offset: Offset(0, 9),
            color: Color(0x0A000000),
            spreadRadius: 0,
          )
        ]
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: SizedBox(
            width: 20,
            child: Icon(Icons.tune,color: Color(0xFFA8AFB0),)
          ),
          hintText: 'ابحث عن.......',
          hintStyle: AppTextStyles.regular13.copyWith(color: Color(0xFFA8AFB0)),
          prefixIcon: SizedBox(
            width: 20,
            child: Center(
              child: Image.asset(
                Assets.imagesIconSearch,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          fillColor: Colors.white,
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: Colors.white),
  );
}
