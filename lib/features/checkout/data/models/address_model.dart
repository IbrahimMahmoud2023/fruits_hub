import '../../domain/entites/address_entites.dart';

class AddressModel {
  String? name;
  String? email;
  String? address;
  String? floor;
  String? city;
  String? phone;

  AddressModel({
    this.name,
    this.email,
    this.address,
    this.floor,
    this.city,
    this.phone,
  });

  factory AddressModel.fromEntity(AddressShipping addressShipping) {
    return AddressModel(
      name: addressShipping.name,
      email: addressShipping.email,
      address: addressShipping.address,
      floor: addressShipping.floor,
      city: addressShipping.city,
      phone: addressShipping.phone,
    );
  }

  @override
  String toString() {
    return '$address, floor: $floor, city: $city ';
  }

  toJason() {
    return {
      'name': name,
      'email': email,
      'address': address,
      'floor': floor,
      'city': city,
      'phone': phone,
    };
  }
}
