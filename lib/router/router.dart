import 'package:auto_route/annotations.dart';
import 'package:chattoo/pages/dashboard/dashboard.dart';
import 'package:chattoo/pages/login/login_page.dart';

// flutter packages pub run build_runner watch   --delete-conflicting-outputs
@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: Dashboard),
  ],
)
class $AppRouter {}
