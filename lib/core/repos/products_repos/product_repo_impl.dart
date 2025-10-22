import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/entites/product_entity.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/core/models/product_model.dart';
import 'package:fruits_ecommerec/core/repos/products_repos/product_repo.dart';
import 'package:fruits_ecommerec/core/services/data_base_services.dart';
import 'package:fruits_ecommerec/core/utils/backend_point.dart';

class ProductRepoImpl extends ProductRepo {
  final DataBaseServices dataBaseServices;
  ProductRepoImpl({required this.dataBaseServices});

  @override
  Future<Either<Failures, List<ProductEntity>>> getBestSellingProducts() async{
    try {
      var data =
          await dataBaseServices.getData(path: BackEndEndPoint.kGetProduct,
          query: {
            'limit' :10,
            'orderBy' : 'sellingCount',
            'descending' : true
          }
          )
      as List<Map<String, dynamic>>;

      // تحويل Model إلى Entity
      List<ProductEntity> products = data
          .map<ProductEntity>((e) => ProductModel.fromJson(e).toEntity())
          .toList();

      return Right(products);
    } catch (e) {
      return Left(ServerFailure(errorMessage: 'failed to get products'));
    }
  }

  @override
  Future<Either<Failures, List<ProductEntity>>> getProduct() async {
    try {
      var data =
          await dataBaseServices.getData(path: BackEndEndPoint.kGetProduct,)
              as List<Map<String, dynamic>>;

      // تحويل Model إلى Entity
      List<ProductEntity> products = data
          .map<ProductEntity>((e) => ProductModel.fromJson(e).toEntity())
          .toList();

      return Right(products);
    } catch (e) {
      return Left(ServerFailure(errorMessage: 'failed to get products'));
    }
  }
}
