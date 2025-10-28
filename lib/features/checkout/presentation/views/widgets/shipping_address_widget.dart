import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/utils/app_style_text.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/payment_item.dart';

import '../../../../../core/utils/assets.dart';
import '../../../domain/entites/order_entity.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'عنوان التوصيل',
      child: Row(
        children: [
          Image.asset(Assets.imagesLocation, width: 16, height: 16),
          SizedBox(width: 8),
          Text(
            '${context.read<OrderEntity>().addressShipping}',
            style: AppTextStyles.regular13.copyWith(color: Color(0xFF4E5556)),
          ),

          const Spacer(),
          GestureDetector(
            onTap: (){
              pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            child: SizedBox(
              child: Row(
                children: [
                  Image.asset(Assets.editImages, width: 16, height: 16),
                  SizedBox(width: 4),
                  Text(
                    'تعديل',
                    style: TextStyle(
                      color: Color(0xFF949D9E),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }



}

