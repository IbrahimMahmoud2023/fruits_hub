
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/repos/orders_repo/orders_repo.dart';
import '../../../domain/entites/order_entity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.ordersRepo) : super(AddOrderInitial());

  final OrdersRepo ordersRepo;


  Future<void> addOrder(OrderEntity orderEntity) async {
    emit(AddOrderLoading());
    final result = await ordersRepo.addOrder(orderEntity);

    result.fold(
      (l) => emit(AddOrderFailure(errorMessage: l.errorMessage)),
      (r) => emit(AddOrderSuccess())
    );
  }
}
