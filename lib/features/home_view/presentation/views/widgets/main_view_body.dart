import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/cart_view.dart';

import '../../../../product_view/presentation/views/product_view.dart';
import 'home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: [HomeView(), ProductView(), CartView()],
    );
  }
}