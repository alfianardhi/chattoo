import 'package:chattoo/application/provider_pages.dart';
// import 'package:chattoo/presentation/menu_list/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home/home_page.dart';
import 'pages/profile/profile_page.dart';
// import 'pages/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get initialConfig => null;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderPages(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Rubik',
        ),
        //home: HomePage(),
        home: ProfilePage(),
        // home: LoginPage(),
        //home: MenuListPage(),
      ),
    );
  }
}
