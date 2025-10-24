import 'package:flutter/material.dart';

class CartActionButton extends StatelessWidget {
  const CartActionButton({
    super.key,
    required this.iconData,
    required this.color,
    this.onPressed,
    required this.iconColor,
  });
  final IconData iconData;
  final Color color;
  final Color iconColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24,
        height: 24,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: FittedBox(child: Icon(iconData, color: iconColor)),
      ),
    );
  }
}