import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/custom_check_box.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_style_text.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomCheckBox(
            value: isChecked,
            onChanged: onChanged,
          ),
        ),

        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب,',
                  style: AppTextStyles.semibold13.copyWith(
                    color: Color(0xFFA9B1B1),
                  ),
                ),
                TextSpan(
                  text: ' فإنك توافق على',
                  style: AppTextStyles.semibold13.copyWith(
                    color: Color(0xFF98A1A2),
                  ),
                ),
                TextSpan(
                  text: '  ',
                  style: AppTextStyles.semibold13.copyWith(
                    color: Color(0xFF98A1A2),
                  ),
                ),
                TextSpan(
                  text: 'الشروط',
                  style: AppTextStyles.semibold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                TextSpan(
                  text: ' والأحكام الخاصة بنا',
                  style: AppTextStyles.semibold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
