import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_featured_item.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomFeaturedItem(),
          );
        },),
      ),
    );

  }
}
