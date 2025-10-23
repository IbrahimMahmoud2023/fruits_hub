import 'package:flutter/material.dart';

class CustomNetWorkingImage extends StatelessWidget {
  const CustomNetWorkingImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image, height: 50, width: 50);
  }
}