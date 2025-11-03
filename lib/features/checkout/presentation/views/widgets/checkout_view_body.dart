import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_input_entity.dart';
import 'package:fruits_ecommerec/features/paypal_payment_entity/paypal_payment_entity.dart';
import '../../../../../constants.dart';
import '../../manager/add_order_cubit/add_order_cubit.dart';
import 'checkout_step_page_view.dart';
import 'checkout_steps.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  int currentPageIndex = 0;

  ValueNotifier<AutovalidateMode> valueNotifier = ValueNotifier(
    AutovalidateMode.disabled,
  );

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
            onTap: (index) {
              if (currentPageIndex == 0) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              } else if (index == 1) {
                var orderEntity = context.read<OrderInputEntity>();
                if (orderEntity.payWithCash != null) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                } else {
                  showSnackBar(context, 'يرجي تحديد طرق الدفع', Colors.red);
                }
              } else {
                _handleAddressValidation();
              }
            },
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
              } else {
                // var orderEntity = context.read<OrderEntity>();
                // context.read<AddOrderCubit>().addOrder(orderEntity);
                _processPayment(context);
              }
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  void _handleShippingSectionValidation(BuildContext context) {
    if (context.read<OrderInputEntity>().payWithCash != null) {
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
    } else {
      valueNotifier.value = AutovalidateMode.always;
    }
  }

  void _processPayment(context) {
    var orderEntity = context.read<OrderInputEntity>();
    PaypalPaymentEntity paypalPaymentEntity = PaypalPaymentEntity.formEntity(
      orderEntity,
    );
    log(paypalPaymentEntity.toJson().toString());
    var addProductCubit = context.read<AddOrderCubit>();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: "",
          secretKey: "",
          transactions: [paypalPaymentEntity.toJson()],

          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            Navigator.pop(context);
            showSnackBar(context, 'تمت عمليه الدفع بنجاح', Colors.green);
            await addProductCubit.addOrder(orderEntity);
          },
          onError: (error) {
            print("onError: $error");
            Navigator.pop(context);
            showSnackBar(context, 'فشلت عمليه الدفع', Colors.red);
          },
          onCancel: () {
            print('cancelled:');
          },
        ),
      ),
    );
  }
}
