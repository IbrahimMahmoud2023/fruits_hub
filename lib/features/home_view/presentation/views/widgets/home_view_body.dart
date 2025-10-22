import 'package:flutter/material.dart' ;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/widgets/custom_search_icon.dart';
import '../../../../auth/presentation/views/widgets/best_selling_grad_view_bloc_builder.dart';
import 'best_selling_grad_view.dart';
import 'best_selling_header.dart';
import 'custom_home_app_bar.dart';
import 'featured_list_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  void initState() {
    BlocProvider.of<ProductsCubit>(context).getBestSellingProducts();
    super.initState();
  }
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
          BestSellingGradViewBlocBuilder()
        ],
      ),
    );
  }
}

