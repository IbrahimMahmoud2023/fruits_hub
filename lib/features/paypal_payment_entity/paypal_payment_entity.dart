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

  factory PaypalPaymentEntity.formEntity(PaypalPaymentEntity entity){
    return PaypalPaymentEntity(
      amount: entity.amount,
      description: entity.description,
      itemList: entity.itemList,
    );

  }
}






