import 'package:chronic_tracker/screens/test_screen.dart';
import 'package:chronic_tracker/screens/test_home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/testHomeScreen',
  routes: [
    GoRoute(
      path: '/testHomeScreen',
      //GoRouterState state
      builder: (context, state) => TestHomeScreen(),
    ),
    GoRoute(
      path: '/testScreen',
      builder: (context, state) => TestScreen(),
    )
  ],
);