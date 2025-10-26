import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget  {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> with AutomaticKeepAliveClientMixin  {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var orderEntity =context.read<OrderEntity>();
    return Column(
      children: [
        SizedBox(height: 33),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
            orderEntity.payWithCash = true;
          },
          child: ShippingItem(
            isSelected: selectedIndex == 0 ? true : false,
            title: 'الدفع عند الاستلام',
            subTitle: 'التسليم من المكان',
            price:
                (context.read<OrderEntity>().cartEntity.calculateTotalPrice() +
                        40)
                    .toString(),
          ),
        ),
        SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
            orderEntity.payWithCash = false;
          },
          isSelected: selectedIndex == 1 ? true : false,
          title: 'الدفع أونلاين',
          subTitle: 'يرجي تحديد طريقه الدفع',
          price: context
              .read<OrderEntity>()
              .cartEntity
              .calculateTotalPrice()
              .toString(),
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
