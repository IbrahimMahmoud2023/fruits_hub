import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

class CartEntity{
  final List<CartItemEntity> cartItems ;
  CartEntity({required this.cartItems});

  addItemToCart(CartItemEntity cartItemEntity){
    cartItems.add(cartItemEntity);
  }
}


