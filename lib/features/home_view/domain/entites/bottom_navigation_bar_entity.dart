import '../../../../core/utils/assets.dart';

class BottomNavigationBarEntity {
  final String inActiveImage , activeImage;
  final String name;

  BottomNavigationBarEntity({required this.inActiveImage,required this.activeImage,required this.name});



  static List<BottomNavigationBarEntity> get bottomNavigationBarItems => [

    BottomNavigationBarEntity(
        inActiveImage: Assets.outlineHome,
        activeImage: Assets.boldHome,
        name: 'الرئيسيه'
    ),
    BottomNavigationBarEntity(
        inActiveImage: Assets.outlineProducts,
        activeImage: Assets.boldProducts,
        name: 'المنتجات'
    ),
    BottomNavigationBarEntity(
        inActiveImage: Assets.outlineShoppingCart,
        activeImage: Assets.boldShoppingCart,
        name: 'سله التسوق'
    ),
    BottomNavigationBarEntity(
        inActiveImage: Assets.outlineUser,
        activeImage: Assets.boldUser,
        name: 'حسابي'
    ),
  ];


}

