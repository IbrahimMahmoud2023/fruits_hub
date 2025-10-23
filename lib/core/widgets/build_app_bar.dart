import 'package:flutter/material.dart';

import '../utils/app_style_text.dart';
import 'notification_widget.dart';

AppBar buildAppBar( BuildContext context,{required String title,bool isBack = true}) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: Visibility(
      visible: isBack,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new_outlined),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      )
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
    title: Text(title, style: AppTextStyles.bold19),
  );
}
