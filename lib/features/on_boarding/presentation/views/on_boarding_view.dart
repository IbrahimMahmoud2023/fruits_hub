import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/on_boarding/presentation/views/widgtes/on_boarding_page_view.dart';
import 'package:fruits_ecommerec/features/on_boarding/presentation/views/widgtes/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  static const String routeName = 'onBoarding';
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
