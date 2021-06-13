import 'package:flutter/material.dart';

class StoryWithImage extends StatelessWidget {
  const StoryWithImage({
    Key? key,
    required this.imagePath,
    required this.imageSize,
  }) : super(key: key);

  final String imagePath;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: imageSize,
      width: imageSize,
    );
  }
}
