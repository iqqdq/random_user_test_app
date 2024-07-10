// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavigationBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationBarScreen(),
      );
    },
    StubRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StubScreen(),
      );
    },
    UserListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserListScreen(),
      );
    },
    UserNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserNavigationScreen(),
      );
    },
    UserRouteRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserPageScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [BottomNavigationBarScreen]
class BottomNavigationBarRoute extends PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StubScreen]
class StubRoute extends PageRouteInfo<void> {
  const StubRoute({List<PageRouteInfo>? children})
      : super(
          StubRoute.name,
          initialChildren: children,
        );

  static const String name = 'StubRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserListScreen]
class UserListRoute extends PageRouteInfo<void> {
  const UserListRoute({List<PageRouteInfo>? children})
      : super(
          UserListRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserNavigationScreen]
class UserNavigationRoute extends PageRouteInfo<void> {
  const UserNavigationRoute({List<PageRouteInfo>? children})
      : super(
          UserNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserPageScreen]
class UserRouteRoute extends PageRouteInfo<UserRouteRouteArgs> {
  UserRouteRoute({
    Key? key,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          UserRouteRoute.name,
          args: UserRouteRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserRouteRoute';

  static const PageInfo<UserRouteRouteArgs> page =
      PageInfo<UserRouteRouteArgs>(name);
}

class UserRouteRouteArgs {
  const UserRouteRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'UserRouteRouteArgs{key: $key, user: $user}';
  }
}
