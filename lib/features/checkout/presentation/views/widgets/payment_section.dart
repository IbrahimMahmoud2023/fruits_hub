import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/shipping_address_widget.dart';

import 'order_summary_widget.dart';


class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        OrderSummaryWidget(),
        SizedBox(height: 16),
        ShippingAddressWidget(
          pageController: pageController,
        )
      ],
    );
  }
}


