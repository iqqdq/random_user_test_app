import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:random_user_test_app/core/core.dart';
import 'package:random_user_test_app/router/router.dart';

@RoutePage()
class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titles = [
      Titles.users,
      Titles.stub,
    ];

    return AutoTabsRouter(
      routes: const [
        UserListRoute(),
        StubRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: SizedBox.expand(
            child: Column(
              children: [
                Expanded(child: child),

                /// DIVIDER
                Container(
                  height: 0.5,
                  color: Theme.of(context).dividerColor,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: theme.scaffoldBackgroundColor,
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.hintColor,
            selectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: theme.primaryColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: theme.hintColor,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/ic_users.svg',
                  width: 24.0,
                  height: 24.0,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/ic_users.svg',
                  width: 24.0,
                  height: 24.0,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
                label: titles[0],
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/ic_stub.svg',
                    width: 24.0,
                    height: 24.0,
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/ic_stub.svg',
                    width: 24.0,
                    height: 24.0,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: titles[1]),
            ],
          ),
        );
      },
    );
  }

  void _openPage(
    int index,
    TabsRouter tabsRouter,
  ) =>
      tabsRouter.setActiveIndex(index);
}
