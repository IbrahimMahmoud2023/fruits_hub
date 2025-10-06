import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/core/helper_function/on_generate_routes.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue
        ),
      ),
      onGenerateRoute:onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
