import 'dart:io';

import 'package:fruits_ecommerec/core/models/review_model.dart';

import '../entites/product_entity.dart';


class ProductModel {
  final String productName;
  final String description;
  final String productCode;
  final num price;
  final bool isFeatured;
  final File image;

  String? imageUrl;
  final num sellingCount;

  final int expirationsOfMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final int unitsAmount;

  final num avgRating = 0;
  final num countRating = 0;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.reviews,
    required this.expirationsOfMonths,
     this.isOrganic = false,
    required this.numberOfCalories,
    required this.sellingCount,
    required this.unitsAmount,
    required this.image,
    required this.productName,
    required this.description,
    required this.productCode,
    required this.price,
    required this.isFeatured,
    this.imageUrl,
  });

  factory ProductModel.fromEntity(
    ProductEntity productEntity, addProductInputEntity,
  ) {
    return ProductModel(
      reviews:  addProductInputEntity.reviews.map((e) => ReviewModel.fromEntity(e)).toList(),
      expirationsOfMonths: addProductInputEntity.expirationsOfMonths,
      isOrganic: addProductInputEntity.isOrganic,
      numberOfCalories: addProductInputEntity.numberOfCalories,
      unitsAmount: addProductInputEntity.unitsAmount,
      image: addProductInputEntity.image,
      productName: addProductInputEntity.productName,
      description: addProductInputEntity.description,
      productCode: addProductInputEntity.productCode,
      price: addProductInputEntity.price,
      isFeatured: addProductInputEntity.isFeatured,
      imageUrl: addProductInputEntity.imageUrl,
      sellingCount: addProductInputEntity.sellingCount,

    );
  }

  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      expirationsOfMonths: json['expirationsOfMonths'],
      isOrganic: json['isOrganic'],
      numberOfCalories: json['numberOfCalories'],
      unitsAmount: json['unitsAmount'],
      productName: json['productName'],
      description: json['description'],
      productCode: json['productCode'],
      sellingCount: json['sellingCount'],
      image: File(json['image']),
      price: json['price'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      reviews: json['reviews'].map((e) => ReviewModel.fromJson(e)).toList(),




    );
  }

  toEntity(){
    return {
      'expirationsOfMonths': expirationsOfMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitsAmount': unitsAmount,
      'productName': productName,
      'description': description,
      'productCode': productCode,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'reviews': reviews.map((e) => e.toEntity()).toList(),
      'sellingCount': sellingCount,

    };
  }

  toJson() {
    return {
      'expirationsOfMonths': expirationsOfMonths,
      'isOrganic': isOrganic,
      'numberOfCalories': numberOfCalories,
      'unitsAmount': unitsAmount,
      'productName': productName,
      'description': description,
      'productCode': productCode,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}
