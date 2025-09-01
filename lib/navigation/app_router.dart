import 'package:chronic_tracker/screens/test_screen.dart';
import 'package:chronic_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _trunkRouteKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _trunkRouteKey,
  routes: [
    GoRoute(
      path: '/',
      //GoRouterState state
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/testScreen',
      builder: (context, state) => TestScreen(),
    )
  ],
);