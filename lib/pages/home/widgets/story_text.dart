import 'package:chattoo/theme.dart';
import 'package:flutter/material.dart';

class StoryText extends StatelessWidget {
  const StoryText({
    Key? key,
    required this.textStory,
  }) : super(key: key);

  final String textStory;

  @override
  Widget build(BuildContext context) {
    return Text(
      textStory,
      style: TextStyle(
        fontSize: 9,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
