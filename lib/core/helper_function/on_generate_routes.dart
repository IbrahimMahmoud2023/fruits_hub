import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/signup_view.dart';

import '../../features/home_view/presentation/views/home_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings ){
  switch (settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
      case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
      case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => SignInView());
      case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => HomeView());
      case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => SignupView());
    default :
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}