import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({super.key, required this.title, required this.subTitle, required this.price});
final String title , subTitle , price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 13,
        right: 28
      ),
      clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0xFFF2F3F3),
        ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only( bottom: 31, left: 10),
              width: 18,
              height: 18,
              decoration: ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFFB0B7B8),
                    ),
                  )
        
              ),
            ),
        
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only( bottom: 6, left: 100),
                  child: Text(
                    title,
                    style: AppTextStyles.bold13,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: const EdgeInsets.only( top: 6),
                  child: Text(
                    subTitle,
                    style: AppTextStyles.bold13.copyWith(
                        color: Color(0xFF000000).withOpacity(0.5)
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: Text(
                '$price',
                style: AppTextStyles.bold13.copyWith(
                  color: AppColors.lightPrimaryColor
                )
              ),
            ),
          ],
        ),
      ),

    );
  }
}
