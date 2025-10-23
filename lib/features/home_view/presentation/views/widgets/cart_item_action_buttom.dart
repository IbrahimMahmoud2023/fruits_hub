import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

import 'cart_action_botton.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartActionButton(
          iconData: Icons.add,
          color: AppColors.primaryColor,
          iconColor: Colors.white,
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('3', style: AppTextStyles.bold16),
        ),
        CartActionButton(
          iconData: Icons.remove,
          color: Color(0xFFF3F5F7),
          iconColor: Colors.grey,
          onPressed: () {},
        ),

      ],
    );
  }
}


