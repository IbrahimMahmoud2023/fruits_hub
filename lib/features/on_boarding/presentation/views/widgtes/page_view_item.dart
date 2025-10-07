import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/login_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/shared_prefrence_singleton.dart';
import '../../../../../core/utils/assets.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
    required this.backgroundColor,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final Color backgroundColor;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                  color: backgroundColor,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(image, height: 250, width: 400),
              ),
              Visibility(
                  visible: isVisible,
                  child: GestureDetector(
                    onTap: (){
                      Prefs.setBool(kOnBoardingSeen, true);
                      Navigator.pushReplacementNamed(context, LoginView.routeName);
                    },
                    child: Padding(padding: const EdgeInsets.all(16.0), child: Text('تخط',style: AppTextStyles.regular13.copyWith(
                      color: Color(0xFF949D9E)
                    ),)),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 50),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
              subTitle, textAlign: TextAlign.center,style: AppTextStyles.semibold13.copyWith(
            color: Color(0xFF4E5456)
          ),),
        ),
      ],
    );
  }
}
