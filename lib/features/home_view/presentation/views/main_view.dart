import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/main_view_body_bloc_consumer.dart';
import '../cubits/cart_cubit/cart_cubit.dart';


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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: currentIndex,
          onTappedItem: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: MainViewBodyBlocConsumer(currentIndex: currentIndex),
        ),
      ),
    );
  }
}




