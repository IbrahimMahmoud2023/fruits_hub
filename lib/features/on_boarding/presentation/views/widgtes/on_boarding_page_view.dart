import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/on_boarding/presentation/views/widgtes/page_view_item.dart';

import '../../../../../core/utils/assets.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
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
            ), Text('HUB'), Text('Fruit')
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        PageViewItem(
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
