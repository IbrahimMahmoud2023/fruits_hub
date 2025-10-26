import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key, required this.currentPageIndex, required this.pageController, required this.formKey});
final int currentPageIndex ;
final GlobalKey<FormState> formKey ;
final PageController pageController;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: List.generate(getSteps().length, (index){
        return Expanded(
          child: GestureDetector(
            onTap: (){
              if (context.read<OrderEntity>().payWithCash != null) {
                pageController.animateToPage(index, duration: Duration(milliseconds: 100), curve: Curves.easeIn);
              }else {
                showSnackBar(context, 'يرجي تحديد طريقه للدفع', Colors.red);
              }

            },
            child: StepItem(
              isActive: index <= currentPageIndex ,
              index: (index+1).toString(),
              title: getSteps()[index],
            ),
          ),
        );
      } ),
    );
  }

}
  List<String> getSteps(){
    return [
      'الشحن',
      'العنوان',
      'الدفع',

    ];
  }
