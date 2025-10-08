import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

import '../../../../../core/utils/assets.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    this.onPressed,
    required this.image,
    required this.text,
  });
  final void Function()? onPressed;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(width: 1, color: Color(0xFFDFE1E1)),
          ),
        ),
        child: ListTile(
          visualDensity: VisualDensity(
            vertical: VisualDensity.minimumDensity
          ),
          leading: Image.asset(image),
          title: Text(
            text,
            style: AppTextStyles.semibold16,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
