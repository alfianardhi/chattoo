// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/dashboard/dashboard.dart' as _i4;
import '../pages/login/login_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.LoginPage();
        }),
    DashboardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<DashboardRouteArgs>(
              orElse: () => DashboardRouteArgs(
                  title: pathParams.getString('title'),
                  btnTitle: pathParams.getString('btnTitle')));
          return _i4.Dashboard(title: args.title, btnTitle: args.btnTitle);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginPageRoute.name, path: '/'),
        _i1.RouteConfig(DashboardRoute.name, path: '/Dashboard')
      ];
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/');

  static const String name = 'LoginPageRoute';
}

class DashboardRoute extends _i1.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({String title, String btnTitle})
      : super(name,
            path: '/Dashboard',
            args: DashboardRouteArgs(title: title, btnTitle: btnTitle));

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.title, this.btnTitle});

  final String title;

  final String btnTitle;
}
