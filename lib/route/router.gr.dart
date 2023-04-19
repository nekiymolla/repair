// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../presentation/authorization/authorization_page.dart' as _i2;
import '../presentation/child_pages/client_page.dart' as _i4;
import '../presentation/child_pages/employee_page.dart' as _i5;
import '../presentation/kvittanciya.dart' as _i1;
import '../presentation/main_page.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    KvitancyaPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.Kvitancya(),
      );
    },
    AuthPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    BottomNavPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.BottomNavPage(),
      );
    },
    ClientPageRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ClientPage(),
      );
    },
    EmployeePageRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmployeePage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/authpageroute',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          KvitancyaPageRoute.name,
          path: '/KvitancyaPagepage',
        ),
        _i6.RouteConfig(
          AuthPageRoute.name,
          path: '/authpageroute',
        ),
        _i6.RouteConfig(
          BottomNavPageRoute.name,
          path: '/bottomnavpage',
          children: [
            _i6.RouteConfig(
              ClientPageRouter.name,
              path: 'clientpageroute',
              parent: BottomNavPageRoute.name,
            ),
            _i6.RouteConfig(
              EmployeePageRouter.name,
              path: 'employeepageroute',
              parent: BottomNavPageRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Kvitancya]
class KvitancyaPageRoute extends _i6.PageRouteInfo<void> {
  const KvitancyaPageRoute()
      : super(
          KvitancyaPageRoute.name,
          path: '/KvitancyaPagepage',
        );

  static const String name = 'KvitancyaPageRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthPageRoute extends _i6.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/authpageroute',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i3.BottomNavPage]
class BottomNavPageRoute extends _i6.PageRouteInfo<void> {
  const BottomNavPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          BottomNavPageRoute.name,
          path: '/bottomnavpage',
          initialChildren: children,
        );

  static const String name = 'BottomNavPageRoute';
}

/// generated route for
/// [_i4.ClientPage]
class ClientPageRouter extends _i6.PageRouteInfo<void> {
  const ClientPageRouter()
      : super(
          ClientPageRouter.name,
          path: 'clientpageroute',
        );

  static const String name = 'ClientPageRouter';
}

/// generated route for
/// [_i5.EmployeePage]
class EmployeePageRouter extends _i6.PageRouteInfo<void> {
  const EmployeePageRouter()
      : super(
          EmployeePageRouter.name,
          path: 'employeepageroute',
        );

  static const String name = 'EmployeePageRouter';
}
