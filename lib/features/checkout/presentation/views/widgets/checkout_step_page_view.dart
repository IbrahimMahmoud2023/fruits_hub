
import 'package:flutter/material.dart';

class CheckOutStepPageView extends StatelessWidget {
  const CheckOutStepPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        itemBuilder: (context , index){
          return SizedBox();
        }

    );
  }
}