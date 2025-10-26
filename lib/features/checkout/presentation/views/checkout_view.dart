import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/widgets/build_app_bar.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';
import 'package:provider/provider.dart';

import '../../domain/entites/address_entites.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
static const String routeName = 'checkout_view';
final CartEntity cartEntity ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشحن' , isNotification: false),
      body: Provider.value(
        value: OrderEntity(cartEntity:  cartEntity, addressShipping: AddressShipping()),
          child: CheckoutViewBody()),
    );
  }
}
