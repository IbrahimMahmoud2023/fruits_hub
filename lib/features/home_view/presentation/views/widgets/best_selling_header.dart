import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style_text.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('الأكثر مبيعًا',style: AppTextStyles.bold16,textAlign: TextAlign.right),
      const  Spacer(),
        Text('المزيد',style: AppTextStyles.regular13.copyWith(color: Color(0xFFB3B9B9))),
      ],
    );
  }
}