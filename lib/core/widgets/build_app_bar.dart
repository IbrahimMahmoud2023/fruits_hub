import 'package:flutter/material.dart';

import '../utils/app_style_text.dart';
import 'notification_widget.dart';

AppBar buildAppBar( BuildContext context,{required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new_outlined),
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
