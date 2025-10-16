import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';

import '../../../../../core/utils/app_style_text.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.name});
final String image ,name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        decoration: ShapeDecoration(
          color: Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),

        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
              ),
              child: Center(child: Image.asset(image)),
            ),
            SizedBox(width: 4,),
            Text(name , style: AppTextStyles.semibold13.copyWith(color: AppColors.primaryColor),)
          ],
        ),
      ),
    );
  }
}
