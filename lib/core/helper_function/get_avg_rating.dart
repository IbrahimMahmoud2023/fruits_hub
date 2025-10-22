import 'package:fruits_ecommerec/core/entites/review_entity.dart';

num getAvgRating(List<ReviewEntity> reviews) {
  num sum =0;
  for(var review in reviews) {
    sum += review.rating;
  }
  return sum/reviews.length;
  }

