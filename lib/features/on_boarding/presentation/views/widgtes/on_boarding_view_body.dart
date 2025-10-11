import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/constants.dart';
import 'package:fruits_ecommerec/core/services/shared_prefrence_singleton.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/widgets/custom_button.dart';
import 'package:fruits_ecommerec/features/on_boarding/presentation/views/widgtes/on_boarding_page_view.dart';

import '../../../../auth/presentation/views/signin_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SafeArea(
            child: OnBoardingPageView(pageController: pageController),
          ),
        ),
        DotsIndicator(
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
          dotsCount: 2,
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
                text: 'أبدأ ألان',
                onPressed: () {
                  Prefs.setBool(kOnBoardingSeen, true);
              Navigator.pushReplacementNamed(context, SignInView.routeName);
            }),
          ),
        ),
        const SizedBox(height: 52),
      ],
    );
  }
}
