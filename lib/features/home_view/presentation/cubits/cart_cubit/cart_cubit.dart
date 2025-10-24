
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';


import '../../../domain/entites/cart_item_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartEntity cartEntity = CartEntity(cartItems: []);
  CartCubit() : super(CartInitial());

  void addItemToCart(CartItemEntity cartItemEntity) {
    cartEntity.addItemToCart(cartItemEntity);
    emit(CartAddedItem());
  }
}
