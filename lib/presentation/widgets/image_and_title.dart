import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/Texts.dart';

// ignore: must_be_immutable
class ImageAndTitle extends StatelessWidget {
  String image;
  String title;
  double height;
  double width;

  ImageAndTitle({
    required this.image,
    required this.title,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            image,
            fit: BoxFit.cover,
            height: height,
            width: width,
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          right: 8,
          child: Texts.text14(title, Colors.black),
        ),
      ],
    );
  }
}
