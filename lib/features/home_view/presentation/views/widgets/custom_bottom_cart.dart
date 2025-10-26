
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../checkout/presentation/views/checkout_view.dart';
import '../../cubits/cart_cubit/cart_cubit.dart';
import '../../cubits/cart_item/cart_item_cubit.dart';

class CustomButtonCard extends StatelessWidget {
  const CustomButtonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) {
        return CustomButton(text: 'الدفع  ${context.watch<CartCubit>().cartEntity.calculateTotalPrice()}  جنيه',onPressed: (){
          if (context.read<CartCubit>().cartEntity.cartItems.isNotEmpty) {
            Navigator.pushNamed(context, CheckoutView.routeName,arguments: context.read<CartCubit>().cartEntity.cartItems);
          }else {
            showSnackBar(context, 'لا توجد منتجات في السله', Colors.red);
          }
        },);
      },
    );
  }
}
