import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style_text.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 10,
            child:Text('2',style: AppTextStyles.semibold13,)
        ),
        SizedBox(width: 4,),
        Text('العنوان', style: AppTextStyles.semibold13.copyWith(color: Colors.grey),)
      ],
    );
  }
}