import 'package:flutter/material.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/bottom_navigation_bar_entity.dart';
import 'navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 60,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
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
          children: BottomNavigationBarEntity.bottomNavigationBarItems.asMap().entries.map((e) {
            var index = e.key;
            var entity = e.value;
            return Expanded(
                flex: selectedIndex == index ? 3 : 1,
                child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: NavigationBarItem(isSelected: selectedIndex == index, bottomNavigationBarEntity: entity)));
          }).toList()
        ),
      ),
    );
  }
}




