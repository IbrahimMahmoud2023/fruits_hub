import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

import '../../cubits/cart_cubit/cart_cubit.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEBF9F1)
      ),
      child: Center(
        child: Text('لديك ${context.watch<CartCubit>().cartEntity.cartItems.length} منتجات في سله التسوق',style: AppTextStyles.semibold13.copyWith(
          color: Color(0xFF1B5E37)
        ),),
      ),
    );
  }
}
