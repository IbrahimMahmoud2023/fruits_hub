import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_home_app_bar.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_search_icon.dart';

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
        ],
      ),
    ),
      ],
    );
  }
}
