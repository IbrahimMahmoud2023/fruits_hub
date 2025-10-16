import 'package:flutter/cupertino.dart';
class InactiveItem extends StatelessWidget {


final String image;
  const InactiveItem({super.key,required this.image, });
  @override
  Widget build(BuildContext context) {
    return Image.asset(image,);
  }
}
