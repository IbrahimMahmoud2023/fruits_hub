import 'dart:io';

import 'package:fruits_ecommerec/core/entites/product_entity.dart';

import '../entites/review_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    productName: 'Apple',
    description: 'Fresh organic apples from local farms.',
    productCode: 'APL001',
    price: 25.5,
    isFeatured: true,
    image: File('assets/images/apple.png'),
    expirationsOfMonths: 3,
    isOrganic: true,
    numberOfCalories: 52,
    unitsAmount: 10,
    imageUrl: 'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce',
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
