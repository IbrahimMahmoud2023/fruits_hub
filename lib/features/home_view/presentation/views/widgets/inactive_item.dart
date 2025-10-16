import 'package:flutter/cupertino.dart';
class InactiveItem extends StatelessWidget {


final String image;
  const InactiveItem({super.key,required this.image, });
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Image.asset(image,));
  }
}
