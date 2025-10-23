import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/services/git_it_services.dart';
import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/repos/products_repos/product_repo.dart';
import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        getIt.get<ProductRepo>(),
      ),
      child: HomeViewBody(),
    );
  }
}




