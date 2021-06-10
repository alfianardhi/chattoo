import 'package:chattoo/router/router.gr.dart';
import 'package:flutter/material.dart';
// import 'pages/home/home_page.dart';
import 'pages/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  get initialConfig => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      //home: HomePage(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // home: LoginPage(),
    );
  }
}
