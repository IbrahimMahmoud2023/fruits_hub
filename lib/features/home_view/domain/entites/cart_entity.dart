import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

import '../../../../core/entites/product_entity.dart';

class CartEntity{
  final List<CartItemEntity> cartItems ;
  CartEntity({required this.cartItems});

  addItemToCart(CartItemEntity cartItemEntity){
    cartItems.add(cartItemEntity);
  }
  bool isExist(ProductEntity product){
    for(var cartItem in cartItems){
      if(cartItem.productEntity == product){
        return true;
      }
    }
    return false;
  }


  CartItemEntity getCartItem(ProductEntity product){

    for(var cartItem in cartItems){
      if(cartItem.productEntity == product){
        return cartItem;
      }
    }
    return CartItemEntity(productEntity: product, countProduct: 1);
  }
}


