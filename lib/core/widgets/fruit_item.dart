import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

import '../entites/product_entity.dart';
import 'custom_networking_image.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),

          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                productEntity.imageUrl != null
                    ? Flexible(
                        child: CustomNetWorkingImage(
                          image: productEntity.imageUrl!,
                        ),
                      )
                    : Container(color: Colors.grey, height: 100, width: 100),
                SizedBox(height: 24),
                ListTile(
                  title: Text(
                    productEntity.productName,
                    style: AppTextStyles.semibold16,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${productEntity.price}جنية',
                          style: AppTextStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' / ',
                          style: AppTextStyles.bold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'الكيلو${productEntity.unitsAmount}',
                          style: AppTextStyles.semibold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
