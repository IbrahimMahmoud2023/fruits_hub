import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title, required this.backgroundColor,
  });

  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                  color: backgroundColor,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  image,
                  height: 250,
                  width: 400,
                ),
              ),
              Padding(padding: const EdgeInsets.all(16.0), child: Text('تخط')),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(subTitle, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
