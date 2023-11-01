import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/Texts.dart';

// ignore: must_be_immutable
class MoreContainer extends StatelessWidget {
  double height;
  double width;
  double bottomPadding;
  List<String> images;

  MoreContainer({
    required this.height,
    required this.width,
    required this.bottomPadding,
    required this.images,
    super.key,
  });

  Container image(String image, double height, double width) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2, right: 2),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        height: height - 2,
        width: width - 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: 10,
        right: 10,
        bottom: bottomPadding,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Column(
              children: [
                Row(
                  children: [
                    image(images[0], height / 2, width / 2),
                    image(images[1], height / 2, width / 2),
                  ],
                ),
                Row(
                  children: [
                    image(images[2], height / 2, width / 2),
                    image(images[3], height / 2, width / 2),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: height-2,
            width: width-2,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            child: Container(
              height: 40,
              width: 100,
              padding: const EdgeInsets.only(right: 5, left: 10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                  right: Radius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Texts.text12('Hammasi', Colors.black),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
