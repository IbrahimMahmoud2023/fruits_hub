import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/core/widgets/custom_networking_image.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_item_action_buttom.dart';

import '../../../../../core/utils/assets.dart';
import '../../../domain/entites/cart_item_entity.dart';
import '../../cubits/cart_cubit/cart_cubit.dart';
import '../../cubits/cart_item/cart_item_cubit.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});
  final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if(current is CartItemUpdated){
          if(current.cartItemEntity == cartItemEntity){
            return true;
          }
        }
        return false;
      },
  builder: (context, state) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            height: 92,
            width: 73,
            decoration: BoxDecoration(color: Color(0xFFF3F5F7)),
            child: CustomNetWorkingImage(image: cartItemEntity.productEntity.imageUrl!),
          ),
          SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(cartItemEntity.productEntity.productName, style: AppTextStyles.bold13),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        context.read<CartCubit>().deleteItemProduct(cartItemEntity);
                      },
                      child: Image.asset(
                        Assets.imagesTrash,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${cartItemEntity.calculateTotalWeight()} كم',
                  style: AppTextStyles.regular13.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),

                Row(
                  children: [
                    CartItemActionButton(
                      cartItemEntity: cartItemEntity,
                    ),
                    Spacer(),
                    Text(
                      '${cartItemEntity.calculateTotalPrice()} جنيه',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  },
);
  }
}
