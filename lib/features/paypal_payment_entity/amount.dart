import '../checkout/domain/entites/order_input_entity.dart';
import 'datails_entity.dart';

class Amount {
  final String total;
  final String currency;
  final DetailsEntity details;

  Amount({
    required this.total,
    required this.currency,
    required this.details,
  });

  factory Amount.fromEntity(OrderInputEntity entity){
    return Amount(
      total: entity.calculateTotalPriceAfterShippingAndDiscount().toString(),
      currency: entity.getCurrency(),
      details: DetailsEntity.fromEntity(entity),
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'currency': currency,
      'details': details.toJson(),
    };
  }
}