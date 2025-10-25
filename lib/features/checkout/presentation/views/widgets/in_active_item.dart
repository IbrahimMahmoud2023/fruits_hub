import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style_text.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key,required this.title,required this.index});
final String title;
final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: Color(0xFFF2F3F3),
            radius: 12,
            child:Text(index.toString(),style: AppTextStyles.semibold16,)
        ),
        SizedBox(width: 4,),
        Text(title, style: AppTextStyles.bold13.copyWith(color: Colors.grey),)
      ],
    );
  }
}