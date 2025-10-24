import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_item.dart';

import '../../../../../constants.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key,required this.cartItems});
final List<CartItemEntity> cartItems ;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => CustomDivider(),
      itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CartItem(
              cartItemEntity: cartItems[index],
            ),
          );
        },

    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(height: 22 , color: Color(0xFFF3F5F7),thickness: 1,);
  }
}
