import 'package:flutter/material.dart';

import '../image_and_title.dart';

// ignore: must_be_immutable
class DiscountItem extends StatelessWidget {
  String title;
  String image;

  DiscountItem({
    required this.title,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        bottom: 20,
        top: 20,
      ),
      child: ImageAndTitle(
        image: image,
        title: title,
        height: (MediaQuery.of(context).size.width / 2.6) * 2,
        width: (MediaQuery.of(context).size.width) / 2.6,
      ),
    );
  }
}
