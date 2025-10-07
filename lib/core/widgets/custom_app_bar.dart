import 'package:flutter/material.dart';

import '../utils/app_style_text.dart';

AppBar buildAppBar( context,{required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new_outlined)),
    centerTitle: true,
    title: Text(title,style: AppTextStyles.bold19,),
  );
}