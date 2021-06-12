import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({this.title, @required this.btnTitle});
  final String title;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Icon(Icons.group),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                (btnTitle == null) ? "Button" : btnTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
