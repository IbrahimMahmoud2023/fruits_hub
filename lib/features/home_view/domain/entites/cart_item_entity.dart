import 'package:equatable/equatable.dart';
import 'package:fruits_ecommerec/core/entites/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int countProduct;

  CartItemEntity({required this.productEntity, this.countProduct = 0});

  num calculateTotalPrice() {
    return productEntity.price * countProduct;
  }

  num calculateTotalWeight() {
    return productEntity.unitsAmount * countProduct;
  }

  increaseCount() {
    countProduct++;
  }

  decreaseCount() {
    if (countProduct > 0) {
      countProduct--;
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
