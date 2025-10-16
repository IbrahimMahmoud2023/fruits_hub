import 'package:flutter/material.dart';
import '../../../../../core/widgets/build_app_bar.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context, title: 'الأكثر مبيعًا'));
  }
}
