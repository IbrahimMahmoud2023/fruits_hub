import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/widgets/featured_item_botton.dart';
import 'package:fruits_ecommerec/generated/assets.dart';

class CustomFeaturedItem extends StatelessWidget {
  const CustomFeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342/158,
        child: Stack(
          children: [
            Image.asset(Assets.imagesTestImag, width: 100),
            Container(
              width: itemWidth *0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesFeaturedItemBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),

                    Text(
                      'عروض العيد',
                      style: AppTextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      'خصم 25%',
                      style: AppTextStyles.bold19.copyWith(color: Colors.white),
                    ),

                    const SizedBox(
                      height: 11,
                    ),

                    FeaturedItemBottom(onPressed: () {}),
                    const SizedBox(
                      height: 29,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
