import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isSelected, this.onTap,
  });
  final String title, subTitle, price;
  final VoidCallback? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        child: Container(
          padding: EdgeInsets.only(top: 16, bottom: 16, left: 13, right: 28),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(
                color: isSelected ? AppColors.primaryColor : Color(0xFFF2F3F3),
              ),
            ),
            color: Color(0xFFF2F3F3),
          ),

          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isSelected ? ActiveShippingItemDot() : InActiveShippingItemDot(),

                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 6, left: 100),
                      child: Text(title, style: AppTextStyles.bold13),
                    ),
                    SizedBox(height: 6),
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      child: Text(
                        subTitle,
                        style: AppTextStyles.bold13.copyWith(
                          color: Color(0xFF000000).withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Center(
                  child: Text(
                    '$price جنيه',
                    style: AppTextStyles.bold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ActiveShippingItemDot extends StatelessWidget {
  const ActiveShippingItemDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 31, left: 10),
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
        color: AppColors.primaryColor,
        shape: OvalBorder(side: BorderSide(width: 4, color: Color(0xFFFFFFFF))),
      ),
    );
  }
}

class InActiveShippingItemDot extends StatelessWidget {
  const InActiveShippingItemDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 31, left: 10),
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
        shape: OvalBorder(side: BorderSide(width: 1, color: Color(0xFFB0B7B8))),
      ),
    );
  }
}
