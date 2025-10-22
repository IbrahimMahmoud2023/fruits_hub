
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/repos/products_repos/product_repo.dart';
import '../../entites/product_entity.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsInitial());
  final ProductRepo productRepo;

  Future<void> getProducts() async {
    emit(ProductsLoading());
    var result = await productRepo.getProduct();

    result.fold(
      (l) => emit(ProductsFailure(errorMessage: l.errorMessage)),
      (r) => emit(ProductsSuccess(products: r)),
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    var result = await productRepo.getBestSellingProducts();

    result.fold(
      (l) => emit(ProductsFailure(errorMessage: l.errorMessage)),
      (r) => emit(ProductsSuccess(products: r)),
    );
  }
}
