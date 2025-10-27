import 'package:fruits_ecommerec/features/checkout/domain/entites/address_entites.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';

class OrderEntity {
  final String uId;
  final CartEntity cartEntity;
  AddressShipping addressShipping;
  bool? payWithCash;

  OrderEntity( {
    required this.uId,
    required this.cartEntity,
    this.payWithCash,
    required this.addressShipping,
  });
}
