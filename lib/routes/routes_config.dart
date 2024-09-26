import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yoliday_assignment_app/screens/main_tab_screen.dart';
import 'package:yoliday_assignment_app/screens/tabs/home_screen.dart';
import 'package:yoliday_assignment_app/screens/tabs/input_screen.dart';
import 'package:yoliday_assignment_app/screens/tabs/portfolio_screen.dart';
import 'package:yoliday_assignment_app/screens/tabs/profile_screen.dart';

class AppRoutes {
  AppRoutes._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static String homeRouteName = '/home';
  static String portfolioRouteName = '/portfolio';
  static String inputRouteName = '/input';
  static String profileRouteName = '/profile';
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/portfolio',
    routes: [
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationshell) =>
              MainTabScreen(navigationshell),
          branches: [
            StatefulShellBranch(routes: [
              GoRoute(
                name: homeRouteName,
                path: '/home',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: HomeScreen()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: portfolioRouteName,
                path: '/portfolio',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: PortfolioScreen()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: inputRouteName,
                path: '/input',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: InputScreen()),
              ),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                name: profileRouteName,
                path: '/profile',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: ProfileScreen()),
              ),
            ]),
          ]),
    ],
  );
}
