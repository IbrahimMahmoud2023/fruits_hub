import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/core/widgets/fruit_item.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/best_selling_grad_view.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/best_selling_header.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/featured_list_item.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_search_icon.dart';
import 'custom_featured_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomHomeAppBar(),
                SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: CustomSearchIcon(),
                ),
                SizedBox(height: 12),
                FeaturedListItem(),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BestSellingHeader(),),
                 const SizedBox(
                   height: 8,
                 )
              ],
            ),
          ),
          BestSellingGradView()
        ],
      ),
    );
  }
}


