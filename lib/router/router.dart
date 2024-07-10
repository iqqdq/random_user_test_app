import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../feauters/bottom_navigation_bar/presentation/view/view.dart';
import '../feauters/stub/presentation/view/view.dart';
import '../feauters/users/data/models/models.dart';
import '../feauters/users/presentation/view/user_navigation_route.dart';
import '../feauters/users/presentation/view/view.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true,
            page: BottomNavigationBarRoute.page,
            children: [
              AutoRoute(page: UserNavigationRoute.page, children: [
                AutoRoute(page: UserListRoute.page),
              ]),
              AutoRoute(page: StubRoute.page),
            ]),
        AutoRoute(page: UserRouteRoute.page),
      ];
}
