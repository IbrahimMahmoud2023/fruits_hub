import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_ecommerec/features/product_view/presentation/views/product_view.dart';
import '../../features/best_selling_fruits/presentation/views/best_selling_view.dart';
import '../../features/home_view/presentation/views/cart_view.dart';
import '../../features/home_view/presentation/views/main_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings ){
  switch (settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
      case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
      case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => BestSellingView());
      case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => SignInView());
      case CartView.routeName:
      return MaterialPageRoute(builder: (context) => CartView());
      case MainView.routeName:
      return MaterialPageRoute(builder: (context) => MainView());
      case ProductView.routeName:
      return MaterialPageRoute(builder: (context) => ProductView());
      case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => SignupView());
    default :
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}