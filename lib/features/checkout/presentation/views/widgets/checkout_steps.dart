import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getSteps().length, (index){
        return Expanded(
          child: StepItem(
            isActive:false ,
            index: (index+1).toString(),
            title: getSteps()[index],
          ),
        );
      } ),
    );
  }

  List<String> getSteps(){
    return [
      'الشحن',
      'العنوان',
      'الدفع',
      'المراجعه'
    ];
  }
}
