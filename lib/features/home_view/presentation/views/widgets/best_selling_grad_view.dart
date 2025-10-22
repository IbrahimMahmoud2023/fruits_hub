import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/core/entites/product_entity.dart';

import '../../../../../core/widgets/fruit_item.dart';

class BestSellingGradView extends StatelessWidget {
  const BestSellingGradView({super.key, required this.products});
final List<ProductEntity> products ;
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
