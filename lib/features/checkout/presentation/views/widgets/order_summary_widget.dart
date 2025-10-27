import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/payment_item.dart';

import '../../../../../core/utils/app_style_text.dart';
import '../../../domain/entites/order_entity.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'ملخص الطلب ',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: AppTextStyles.bold13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '${context.read<OrderEntity>().cartEntity.calculateTotalPrice()} جنيه',
                style: AppTextStyles.bold16.copyWith(
                  color: Color(0xFF0C0D0D),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: AppTextStyles.bold13.copyWith(
                  color: Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '30جنية',
                  style: AppTextStyles.bold13.copyWith(color: Color(0xFF4E5556),),
                ),
              ),
            ],
          ),
          SizedBox(height: 9),
          Divider(
              thickness: 0.8,
              color: Color(0xFFCACECE)
          ),
          SizedBox(height: 9),
          Row(
            children: [
              Text(
                'الكلي',
                style: AppTextStyles.bold16.copyWith( color: Color(0xFF0C0D0D),),
              ),
              const Spacer(),
              Text(
                '${context.read<OrderEntity>().cartEntity.calculateTotalPrice() + 30} جنيه',
                style: AppTextStyles.bold16.copyWith(  color: Color(0xFF0C0D0D),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}