import 'package:chattoo/pages/home/widgets/story_with_image.dart';
import 'package:chattoo/pages/home/widgets/story_text.dart';
import 'package:flutter/material.dart';
import 'package:chattoo/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 46,
            ),
            Text('Chat',
                style: TextStyle(
                  fontSize: 48,
                  color: blackColor,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                suffixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            SizedBox(
              height: 24.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    StoryWithImage(
                      imagePath: 'assets/images/add_story.png',
                      imageSize: 38,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    StoryText(
                      textStory: "Add New",
                    ),
                  ],
                ),
                Column(
                  children: [
                    StoryWithImage(
                      imagePath: 'assets/images/story1.png',
                      imageSize: 42,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    StoryText(
                      textStory: "Andrew",
                    ),
                  ],
                ),
                Column(
                  children: [
                    StoryWithImage(
                      imagePath: 'assets/images/story2.png',
                      imageSize: 42,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    StoryText(
                      textStory: "Micheal",
                    ),
                  ],
                ),
                Column(
                  children: [
                    StoryWithImage(
                      imagePath: 'assets/images/story3.png',
                      imageSize: 42,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    StoryText(
                      textStory: "Sara",
                    ),
                  ],
                ),
                Column(
                  children: [
                    StoryWithImage(
                      imagePath: 'assets/images/story4.png',
                      imageSize: 42,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    StoryText(
                      textStory: "John",
                    ),
                  ],
                ),
                Column(
                  children: [
                    StoryWithImage(
                      imagePath: 'assets/images/story5.png',
                      imageSize: 43,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    StoryText(
                      textStory: "Julia",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
