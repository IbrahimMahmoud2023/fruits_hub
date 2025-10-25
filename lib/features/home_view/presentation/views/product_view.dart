import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/repos/products_repos/product_repo.dart';
import 'package:fruits_ecommerec/core/services/git_it_services.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/product_view_body.dart';
import '../../../../core/cubits/products_cubit/products_cubit.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  static const String routeName = 'product_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProductsCubit(
          getIt.get< ProductRepo>()
        ),
        child: ProductViewBody(),
      ),
    );
  }
}
