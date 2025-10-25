import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_style_text.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.title});

 final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 11.5,
          child: Icon(Icons.check,color: Colors.white,size: 16,),
        ),
        SizedBox(width: 4,),
        Text(title, style: AppTextStyles.bold13.copyWith(color: AppColors.primaryColor),)
      ],
    );
  }
}