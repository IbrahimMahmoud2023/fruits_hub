import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/widgets/build_app_bar.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});
static const String routeName = 'checkout_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشحن' , isNotification: false),
      body: CheckoutViewBody(),
    );
  }
}
