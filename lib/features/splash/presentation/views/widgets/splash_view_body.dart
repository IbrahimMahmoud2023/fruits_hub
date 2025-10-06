import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Image.asset(Assets.imagesPlant, height: 200)],
        ),
        Image.asset(Assets.imagesLogo, width: 200, height: 200),
        Image.asset(Assets.imagesSplashCircle,fit: BoxFit.fill,),
      ],
    );
  }
}
