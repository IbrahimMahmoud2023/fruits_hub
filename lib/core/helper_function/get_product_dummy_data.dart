

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
    imageUrl: 'https://www.google.com/imgres?q=images&imgurl=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1526779259212-939e64788e3c%3Fixlib%3Drb-4.1.0%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%253D%253D%26fm%3Djpg%26q%3D60%26w%3D3000&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ffree-images&docid=rSJymaiqlIbilM&tbnid=salFp-bzk6qAVM&vet=12ahUKEwij9cWSnruQAxX9APsDHTF9AbkQM3oECB8QAA..i&w=3000&h=1993&hcb=2&ved=2ahUKEwij9cWSnruQAxX9APsDHTF9AbkQM3oECB8QAA',
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
