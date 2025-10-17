import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/core/services/shared_prefrence_singleton.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_ecommerec/features/home_view/presentation/views/home_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/services/firebase_auth_services.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment:
              Localizations.localeOf(context).languageCode == 'ar'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [Image.asset(Assets.imagesPlant, height: 200)],
        ),
        Image.asset(Assets.imagesLogo, width: 200, height: 200),
        Image.asset(Assets.imagesSplashCircle, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    bool onBoardingSeen = Prefs.getBool(kOnBoardingSeen) ?? false;
    Future.delayed(const Duration(seconds: 3), () {

      if (onBoardingSeen) {
        var isLoggedIn = FirebaseAuthServices().isLoggedIn();
        if(isLoggedIn){

        Navigator.pushReplacementNamed(context, SignInView.routeName);
        }else {
          Navigator.pushReplacementNamed(context, SignInView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
