import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/in_active_item.dart';

import 'active_step_item.dart';

class StepItem extends StatelessWidget {
  const StepItem({super.key, required this.index, required this.title, required this.isActive});
final String index  , title;
final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: InActiveStepItem(title: title, index: index),
        secondChild: ActiveStepItem(title: title),
        crossFadeState: isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 300)
    );
  }
}
