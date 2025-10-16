import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style_text.dart';
import '../../../../best_selling_fruits/presentation/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BestSellingView.routeName);
      },
      child: Row(
        children: [
          Text('الأكثر مبيعًا',style: AppTextStyles.bold16,textAlign: TextAlign.right),
        const  Spacer(),
          Text('المزيد',style: AppTextStyles.regular13.copyWith(color: Color(0xFFB3B9B9))),
        ],
      ),
    );
  }
}