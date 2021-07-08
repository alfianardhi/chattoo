import 'package:flutter/material.dart';
import 'package:chattoo/pages/dashboard/dashboard.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Icon(Icons.account_circle),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: ElevatedButton(
              // splashColor: Colors.blueAccent,
              child: Text(
                "Login",
              ),
              onPressed: () {
                String title = "Dashboards";

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Dashboard(
                          title: title,
                          btnTitle: "Counter",
                        )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
