import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';
import '../../../../../core/entites/product_entity.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartEntity cartEntity = CartEntity(cartItems: []);
  CartCubit() : super(CartInitial());

  void addProduct(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExist(productEntity);
    var cartItemEntity = cartEntity.getCartItem(productEntity);

    if (isProductExist) {
      //increase count of  product
      cartItemEntity.increaseCount();
    } else {
      cartItemEntity.decreaseCount();
      cartEntity.addItemToCart(cartItemEntity);
    }
    emit(CartAddedItem());
  }
}
