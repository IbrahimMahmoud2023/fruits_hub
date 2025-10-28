import 'package:fruits_ecommerec/features/checkout/domain/entites/address_entites.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';

class OrderEntity {
  final String uId;
  final CartEntity cartEntity;
  AddressShipping addressShipping;
  bool? payWithCash;

  OrderEntity({
    required this.uId,
    required this.cartEntity,
    this.payWithCash,
    required this.addressShipping,
  });

  double calculateShippingCost() {
    if (payWithCash == true) {
      return 30;
    } else {
      return 0;
    }
  }

  double calculateShippingDiscount() {
    return 0;
  }
  double calculateTotalPriceAfterShippingAndDiscount() {
    return cartEntity.calculateTotalPrice() + calculateShippingCost() - calculateShippingDiscount();

  }

  String getCurrency(){
    return 'USD';
  }

}

