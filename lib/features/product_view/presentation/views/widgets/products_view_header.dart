import 'package:flutter/material.dart';

import '../../../../../core/utils/app_style_text.dart';
import '../../../../../core/utils/assets.dart';

class ProductViewHeader extends StatelessWidget {
  const ProductViewHeader({super.key, required this.productLength});
final int productLength ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$productLength نتائج ',style: AppTextStyles.bold16,textAlign: TextAlign.right),
        const  Spacer(),
        Image.asset(Assets.imagesFliter2,height: 50,width: 50),
      ],
    );
  }
}