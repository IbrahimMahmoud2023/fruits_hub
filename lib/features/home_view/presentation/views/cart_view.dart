import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
static const String routeName = 'cart_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartViewBody(),
    );
  }
}
