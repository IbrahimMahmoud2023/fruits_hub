import 'package:flutter/cupertino.dart';

import '../../../../../core/widgets/fruit_item.dart';

class BestSellingGradView extends StatelessWidget {
  const BestSellingGradView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemBuilder: (context, index) {
        return FruitItem();
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 163 / 214,
      ),
    );

  }
}
