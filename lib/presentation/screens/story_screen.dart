import 'package:flutter/material.dart';
import 'package:samokat/presentation/widgets/story/story_like_button.dart';

import '../constants/app_icons.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  bool _isLike = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height -
                    110,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://88227.selcdn.ru/cm-catalog-api-prod/public/08cea2784c7a8199________.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade300,
                    ),
                    child: Image.asset(
                      AppIcons.close,
                      width: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () => setState(() {
                _isLike = !_isLike;
              }),
              child: StoryLike(
                icon: AppIcons.like,
                isLike: _isLike,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
