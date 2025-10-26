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
  int currentPageIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.toInt();
      });
    });
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
          CheckoutSteps(
            pageController: pageController,
            currentPageIndex: currentPageIndex,
          ),
          Expanded(
            child: CheckOutStepPageView(pageController: pageController),
          ),

          CustomButton(text: getStepTitle(currentPageIndex), onPressed: (){
            pageController.animateToPage(currentPageIndex+1, duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
          },),
          SizedBox(height: 30),
        ],
      ),
    );
  }
String getStepTitle(currentPageIndex) {
  switch (currentPageIndex) {
    case 0 :
   return 'التالي';
    case 1 :
   return 'التالي';
    case 2 :
   return 'الدفع عبر PayPal';
    default :
   return 'التالي';

  }
}
}





