import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/widgets/build_app_bar.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartItems});
static const String routeName = 'checkout_view';
final List<CartItemEntity> cartItems ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشحن' , isNotification: false),
      body: CheckoutViewBody(),
    );
  }
}
