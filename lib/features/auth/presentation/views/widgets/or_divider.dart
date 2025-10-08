import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style_text.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Expanded(
         child: Divider(

           color: Color(0xFFCBD0D1),
         ),
       ),
        SizedBox(
          width: 16,
        ),
      Text('أو',style: AppTextStyles.semibold16),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFCBD0D1),
          ),
        )
      ],
    );
  }
}