import 'package:equatable/equatable.dart';
import 'package:fruits_ecommerec/core/entites/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({required this.productEntity, this.quantity = 0});

  num calculateTotalPrice() {
    return productEntity.price * quantity;
  }

  num calculateTotalWeight() {
    return productEntity.unitsAmount * quantity;
  }

  increaseCount() {
    quantity++;
  }

  decreaseCount() {
    if (quantity > 0) {
      quantity--;
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
