

import 'package:fruits_ecommerec/core/entites/product_entity.dart';


ProductEntity getDummyProduct() {
  return ProductEntity(
    productName: 'Apple',
    description: 'Fresh organic apples from local farms.',
    productCode: 'APL001',
    price: 25.5,
    isFeatured: true,
    expirationsOfMonths: 3,
    isOrganic: true,
    numberOfCalories: 52,
    unitsAmount: 10,
    imageUrl: null,
    reviews: [],
  );
}

List<ProductEntity> getDummyData() {
  return [
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
    getDummyProduct(),
  ];
}
