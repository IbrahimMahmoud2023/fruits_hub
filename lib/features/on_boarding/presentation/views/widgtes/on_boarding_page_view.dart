import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/on_boarding/presentation/views/widgtes/page_view_item.dart';

import '../../../../../core/utils/assets.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController,});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:true ,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          backgroundColor: Color(0XFFFDC5AD),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في ',style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              fontFamily: 'Cairo',
              color: Color(0XFF0C0D0D),
            ),
            ), Text('HUB',style: AppTextStyles.bold23.copyWith(color: AppColors.secondaryColor),),
              Text('Fruit',style: AppTextStyles.bold23.copyWith(color: AppColors.primaryColor),)
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
          isVisible:false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          backgroundColor: Color(0XFF84AB95),
          title: Text(
            textAlign: TextAlign.center,
            'أبحث وتسوق',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              fontFamily: 'Cairo',
              color: Color(0XFF0C0D0D),
            ),
          ),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
