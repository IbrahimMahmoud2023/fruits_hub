import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/helper_function/get_product_dummy_data.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/helper_function/custom_error_widget.dart';
import '../../../../home_view/presentation/views/widgets/best_selling_grad_view.dart';

class BestSellingGradViewBlocBuilder extends StatelessWidget {
  const BestSellingGradViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingGradView(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGradView(
              products: getDummyData(),
            ),
          );
        }
      },
    );
  }
}
