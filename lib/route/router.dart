import 'package:auto_route/auto_route.dart';
import 'package:repair/presentation/authorization/authorization_page.dart';
import 'package:repair/presentation/child_pages/client_page.dart';
import 'package:repair/presentation/child_pages/employee_page.dart';
import 'package:repair/presentation/kvittanciya.dart';
import 'package:repair/presentation/main_page.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(
    page: Kvitancya,
    name: 'KvitancyaPageRoute',
    path: '/KvitancyaPagepage',
  ),
  AutoRoute(
      page: AuthPage,
      initial: true,
      name: 'authPageRoute',
      path: '/authpageroute'),
  AutoRoute(
      page: BottomNavPage,
      name: 'BottomNavPageRoute',
      path: '/bottomnavpage',
      children: [
        AutoRoute(
          page: ClientPage,
          path: 'clientpageroute',
          name: 'ClientPageRouter',
        ),
        AutoRoute(
          page: EmployeePage,
          path: 'employeepageroute',
          name: 'EmployeePageRouter',
        ),
      ]),
])
class $AppRouter {}
