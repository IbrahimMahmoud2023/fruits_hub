import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/home_view.dart';
import 'package:fruits_ecommerec/features/product_view/presentation/views/product_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = 'main_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: currentIndex,
        onTappedItem: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: [HomeView(), ProductView()],
        ),
      ),
    );
  }
}
