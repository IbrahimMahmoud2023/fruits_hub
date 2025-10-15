import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/featured_list_item.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_search_icon.dart';
import 'custom_featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
    SliverToBoxAdapter(
      child:Column(
        children: [
          SizedBox(height: 16,),
          CustomHomeAppBar(),
          SizedBox(height: 16,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomSearchIcon(),
          ),
          SizedBox(
            height: 12,
          ),
          FeaturedListItem(),
        ],
      ),
    ),
      ],
    );
  }
}
