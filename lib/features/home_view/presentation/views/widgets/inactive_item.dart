
import 'package:flutter/material.dart';

class InactiveItem extends StatelessWidget {


final String image;
  const InactiveItem({super.key,required this.image, });
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Image.asset(image,));
  }
}
