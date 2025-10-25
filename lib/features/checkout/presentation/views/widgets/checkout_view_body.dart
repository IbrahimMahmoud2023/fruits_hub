import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import '../../../../../constants.dart';
import 'checkout_step_page_view.dart';
import 'checkout_steps.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          SizedBox(height: 20),
          CheckoutSteps(),
          Expanded(
            child: CheckOutStepPageView(pageController: pageController),
          ),

          CustomButton(text: 'التالي', onPressed: (){
            pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
          },),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}




