import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerec/core/helper_function/on_generate_routes.dart';
import 'package:fruits_ecommerec/core/services/shared_prefrence_singleton.dart';
import 'package:fruits_ecommerec/core/utils/app_colors.dart';

import 'features/splash/presentation/views/splash_view.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
   scaffoldBackgroundColor: Colors.white,
   colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
