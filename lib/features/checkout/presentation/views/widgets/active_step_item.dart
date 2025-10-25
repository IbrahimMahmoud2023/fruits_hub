import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_style_text.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 11.5,
          child: Icon(Icons.check,color: Colors.white,size: 18,),
        ),
        SizedBox(width: 4,),
        Text('الشحن', style: AppTextStyles.bold16.copyWith(color: AppColors.primaryColor),)
      ],
    );
  }
}