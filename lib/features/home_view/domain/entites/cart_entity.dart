import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

import '../../../../core/entites/product_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;
  CartEntity({required this.cartItems});

  addItemToCart(CartItemEntity cartItemEntity) {
    cartItems.add(cartItemEntity);
  }

  void deleteItemProduct(CartItemEntity cartItem){
    cartItems.remove(cartItem);
  }


  bool isExist(ProductEntity product) {
    for (var cartItem in cartItems) {
      if (cartItem.productEntity == product) {
        return true;
      }
    }
    return false;
  }

  int calculateTotalPrice() {
    double totalPrice = 0;
    for (var cartItem in cartItems) {
      totalPrice += cartItem.calculateTotalPrice();
    }
    return totalPrice.round();
  }

  CartItemEntity getCartItem(ProductEntity product) {
    for (var cartItem in cartItems) {
      if (cartItem.productEntity == product) {
        return cartItem;
      }
    }
    return CartItemEntity(productEntity: product, countProduct: 1);
  }
}
