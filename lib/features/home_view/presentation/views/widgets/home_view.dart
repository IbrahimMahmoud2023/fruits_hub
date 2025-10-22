import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/services/git_it_services.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/core/widgets/fruit_item.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/best_selling_grad_view.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/best_selling_header.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/featured_list_item.dart';

import '../../../../../constants.dart';
import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/repos/products_repos/product_repo.dart';
import '../../../../../core/widgets/custom_search_icon.dart';
import 'custom_featured_item.dart';
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




