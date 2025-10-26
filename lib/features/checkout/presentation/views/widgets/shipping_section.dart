import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/shipping_item.dart';

import '../../../../home_view/presentation/cubits/cart_cubit/cart_cubit.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key,});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33,
        ),
        GestureDetector(
          onTap: (){
             setState(() {
             selectedIndex =0;

             });
          },
          child: ShippingItem(

            isSelected: selectedIndex == 0 ? true : false,
            title: 'الدفع عند الاستلام',
            subTitle: 'التسليم من المكان',
            price:  (context.read<CartCubit>().cartEntity.calculateTotalPrice() + 40).toString(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex =1;

            });
          },
          isSelected: selectedIndex == 1 ? true : false,
          title: 'الدفع أونلاين',
          subTitle: 'يرجي تحديد طريقه الدفع',
          price: context.read<CartCubit>().cartEntity.calculateTotalPrice().toString(),
        ),
      ],
    );
  }
}
