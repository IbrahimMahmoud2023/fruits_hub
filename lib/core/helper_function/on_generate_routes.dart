import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/login_view.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/signup_view.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings ){
  switch (settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
      case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
      case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
      case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => SignupView());
    default :
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}