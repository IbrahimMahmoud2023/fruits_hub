import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/active_step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(getSteps().length, (index){
        return Expanded(
          child: ActiveStepItem(
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
