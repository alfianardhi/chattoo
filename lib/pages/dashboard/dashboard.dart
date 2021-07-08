import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({required this.title, required this.btnTitle});
  final String title;
  final String btnTitle;

  int number1 = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number1 += 1;
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                btnTitle,
              ),
            ),
          ),
          Center(
            child: Text(
              number1.toString(),
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
