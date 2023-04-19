import 'package:auto_route/auto_route.dart';
import 'package:repair/presentation/authorization/authorization_page.dart';
import 'package:repair/presentation/main_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(
      page: AuthPage,
      initial: true,
      name: 'authPageRoute',
      path: '/authpageroute'),
  AutoRoute(
      page: BottomNavPage,
      name: 'BottomNavPageRoute',
      path: '/bottomnavpage',
      children: []),
])
class $AppRouter {}
