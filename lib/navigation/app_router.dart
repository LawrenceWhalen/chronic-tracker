import 'package:chronic_tracker/screens/test_screen.dart';
import 'package:chronic_tracker/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/homeScreen',
  routes: [
    GoRoute(
      path: '/homeScreen',
      //GoRouterState state
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/testScreen',
      builder: (context, state) => TestScreen(),
    )
  ],
);