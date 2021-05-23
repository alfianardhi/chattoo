import 'package:flutter/material.dart';
import 'package:chattoo/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 46,
            ),
            Text(
              'Chat',
              style: TextStyle(
                fontSize: 48,
                color: blackColor,
                fontWeight: FontWeight.w400,
              )),
          ],
        ),
      ),
    );
  }
}