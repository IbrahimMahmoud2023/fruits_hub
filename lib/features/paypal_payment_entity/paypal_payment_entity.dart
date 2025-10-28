import '../checkout/domain/entites/order_entity.dart';
import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  final Amount amount;
  final String description;
  final ItemList itemList;

  PaypalPaymentEntity({
    required this.amount,
    required this.description,
    required this.itemList,
  });

  factory PaypalPaymentEntity.formEntity(OrderEntity entity){
    return PaypalPaymentEntity(
      amount: Amount.fromEntity(entity),
      description: ' payment description.',
      itemList: ItemList.formEntity(cartItems: entity.cartEntity.cartItems),
    );
  }

  toJson() {
    return {
      'amount': amount.toJson(),
      'description': description,
      'item_list': itemList.toJson(),
    };
  }


}
