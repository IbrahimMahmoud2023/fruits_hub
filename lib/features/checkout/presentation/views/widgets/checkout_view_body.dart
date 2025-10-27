import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';
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

  ValueNotifier<AutovalidateMode> valueNotifier = ValueNotifier(AutovalidateMode.disabled);

  late PageController pageController;
  final GlobalKey<FormState> _formKey = GlobalKey();
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
    valueNotifier.dispose();
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
            formKey: _formKey,
            pageController: pageController,
            currentPageIndex: currentPageIndex,
          ),
          Expanded(
            child: CheckOutStepPageView(
              valueListenable: valueNotifier,
              formKey: _formKey,
              pageController: pageController,
            ),
          ),

          CustomButton(
            text: getStepTitle(currentPageIndex),
            onPressed: () {
              if (currentPageIndex == 0) {
                _handleShippingSectionValidation(context);
              } else if (currentPageIndex == 1) {
                _handleAddressValidation();

              }
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  void _handleShippingSectionValidation(BuildContext context) {
    if (context.read<OrderEntity>().payWithCash != null) {
      pageController.animateToPage(
        currentPageIndex + 1,
        duration: Duration(milliseconds: 100),
        curve: Curves.bounceIn,
      );

    } else {
      showSnackBar(context, 'يرجي تحديد طريقه للدفع', Colors.red);
    }
  }

  String getStepTitle(currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        return 'التالي';
      case 1:
        return 'التالي';
      case 2:
        return 'الدفع عبر PayPal';
      default:
        return 'التالي';
    }
  }

  void _handleAddressValidation() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      pageController.animateToPage(
        currentPageIndex + 1,
        duration: Duration(milliseconds: 100),
        curve: Curves.bounceIn,
      );
    }else {
      valueNotifier.value = AutovalidateMode.always;

    }
  }
}
