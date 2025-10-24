import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

import '../../cubits/cart_item/cart_item_cubit.dart';
import 'cart_action_botton.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({super.key, required this.cartItemEntity});
final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartActionButton(
          iconData: Icons.add,
          color: AppColors.primaryColor,
          iconColor: Colors.white,
          onPressed: () {
            cartItemEntity.increaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);

          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(cartItemEntity.countProduct.toString(), style: AppTextStyles.bold16),
        ),
        CartActionButton(
          iconData: Icons.remove,
          color: Color(0xFFF3F5F7),
          iconColor: Colors.grey,
          onPressed: () {
            cartItemEntity.decreaseCount();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),

      ],
    );
  }
}


