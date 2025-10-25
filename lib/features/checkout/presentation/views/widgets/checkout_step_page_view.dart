
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/shipping_section.dart';

class CheckOutStepPageView extends StatelessWidget {
  const CheckOutStepPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: PageView.builder(
        itemCount: getPages().length,
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          itemBuilder: (context , index){
            return getPages()[index];
          }

      ),
    );
  }
}

List<Widget> getPages() {
  return [
    ShippingSection(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];
}