import 'dart:io';

import 'package:fruits_ecommerec/core/entites/review_entity.dart';


class ProductEntity {
  final String productName;
  final String description;
  final String productCode;
  final num price;
  final bool isFeatured;

  final int expirationsOfMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitsAmount;

  final num avgRating = 0;
  final num countRating = 0;

  String? imageUrl;

  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.reviews,
    required this.expirationsOfMonths,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitsAmount,
    required this.productName,
    required this.description,
    required this.productCode,
    required this.price,
    required this.isFeatured,
    this.imageUrl,
  });
}
