import 'package:chattoo/presentation/menu_list/menu_list.dart';
import 'package:flutter/material.dart';
// import 'pages/home/home_page.dart';
// import 'pages/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get initialConfig => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      //home: HomePage(),
      //home: LoginPage(),
      home: MenuListPage(),
    );
  }
}
