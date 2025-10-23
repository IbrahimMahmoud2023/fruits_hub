import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/helper_function/get_product_dummy_data.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/helper_function/custom_error_widget.dart';
import 'products_grad_view.dart';

class ProductGradViewBlocBuilder extends StatelessWidget {
  const ProductGradViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return ProductGradView(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: ProductGradView(
              products: getDummyData(),
            ),
          );
        }
      },
    );
  }
}
