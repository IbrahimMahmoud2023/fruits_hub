import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/products_view_header.dart';
import '../../../../../constants.dart';
import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/widgets/build_app_bar.dart';
import '../../../../../core/widgets/custom_search_icon.dart';
import '../../../../home_view/presentation/views/widgets/product_grad_view_bloc_builder.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {

  @override
  void initState() {
    BlocProvider.of<ProductsCubit>(context).getProducts();
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
               buildAppBar(context, title: 'المنتجات',isBack: false),
                SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: CustomSearchIcon(),
                ),
                SizedBox(height: 12),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: ProductViewHeader(
                    productLength: context.read<ProductsCubit>().productLength,
                  ),),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          ProductGradViewBlocBuilder()
        ],
      ),
    );
  }
}
