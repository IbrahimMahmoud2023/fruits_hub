import 'package:fruits_ecommerec/features/checkout/domain/entites/address_entites.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity ;
   AddressShipping? addressShipping  = AddressShipping() ;
   bool? payWithCash ;

  OrderEntity({required this.cartEntity, this.payWithCash, this.addressShipping});
}


