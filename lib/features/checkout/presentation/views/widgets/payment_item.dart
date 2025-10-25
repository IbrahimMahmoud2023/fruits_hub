import 'package:flutter/cupertino.dart';
import 'package:fruits_ecommerec/core/utils/app_decorations.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.title, required this.child});
final String title;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24,),
        Text(title ,style: AppTextStyles.bold13,),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
          decoration: AppDecorations.greyBoxDecoration,
          child:child ,
        )
      ],
    );
  }
}
