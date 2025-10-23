import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_header.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_item.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/build_app_bar.dart';
import 'cart_ltem_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  buildAppBar(
                    context,
                    title: 'السلة',
                    isBack: true,
                    isNotification: false,
                  ),
                  SizedBox(height: 16),
                  CartHeader(),
                  SizedBox(height: 16),
        
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: CustomDivider(),
            ),
            CartItemList(),
            SliverToBoxAdapter(
              child: CustomDivider(),
            ),
          ],
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height *0.04,
            left: 16,
            right: 16,
            child: CustomButton(text: 'الدفع  120جنيه',onPressed: (){},))
      ],
    );
  }
}
