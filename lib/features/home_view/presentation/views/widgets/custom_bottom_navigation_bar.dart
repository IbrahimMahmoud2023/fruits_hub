import 'package:flutter/material.dart';

import '../../../domain/entites/bottom_navigation_bar_entity.dart';
import 'navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTappedItem;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTappedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: BottomNavigationBarEntity.bottomNavigationBarItems
              .asMap()
              .entries
              .map((e) {
            var index = e.key;
            var entity = e.value;
            return Expanded(
              flex: selectedIndex == index ? 3 : 1,
              child: GestureDetector(
                onTap: () => onTappedItem(index),
                child: NavigationBarItem(
                  isSelected: selectedIndex == index,
                  bottomNavigationBarEntity: entity,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
