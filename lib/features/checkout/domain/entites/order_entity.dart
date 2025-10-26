import 'package:fruits_ecommerec/features/checkout/domain/entites/address_entites.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

class OrderEntity {
  final List<CartItemEntity> cartItem ;
  final AddressShipping addressShipping;
  final bool payWithCash ;

  OrderEntity({required this.cartItem, required this.payWithCash,required this.addressShipping});
}


