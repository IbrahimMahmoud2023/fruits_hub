import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_header.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_item.dart';
import '../../../../../constants.dart';
import '../../../../../core/widgets/build_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
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
                CartItem()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
