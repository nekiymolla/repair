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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../presentation/authorization/authorization_page.dart' as _i1;
import '../presentation/child_pages/client_page.dart' as _i3;
import '../presentation/child_pages/employee_page.dart' as _i4;
import '../presentation/main_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    BottomNavPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BottomNavPage(),
      );
    },
    ClientPageRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ClientPage(),
      );
    },
    EmployeePageRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmployeePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/authpageroute',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          AuthPageRoute.name,
          path: '/authpageroute',
        ),
        _i5.RouteConfig(
          BottomNavPageRoute.name,
          path: '/bottomnavpage',
          children: [
            _i5.RouteConfig(
              ClientPageRouter.name,
              path: 'clientpageroute',
              parent: BottomNavPageRoute.name,
            ),
            _i5.RouteConfig(
              EmployeePageRouter.name,
              path: 'employeepageroute',
              parent: BottomNavPageRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthPageRoute extends _i5.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/authpageroute',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i2.BottomNavPage]
class BottomNavPageRoute extends _i5.PageRouteInfo<void> {
  const BottomNavPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BottomNavPageRoute.name,
          path: '/bottomnavpage',
          initialChildren: children,
        );

  static const String name = 'BottomNavPageRoute';
}

/// generated route for
/// [_i3.ClientPage]
class ClientPageRouter extends _i5.PageRouteInfo<void> {
  const ClientPageRouter()
      : super(
          ClientPageRouter.name,
          path: 'clientpageroute',
        );

  static const String name = 'ClientPageRouter';
}

/// generated route for
/// [_i4.EmployeePage]
class EmployeePageRouter extends _i5.PageRouteInfo<void> {
  const EmployeePageRouter()
      : super(
          EmployeePageRouter.name,
          path: 'employeepageroute',
        );

  static const String name = 'EmployeePageRouter';
}
