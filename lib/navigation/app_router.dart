import 'package:chronic_tracker/screens/test_screen.dart';
import 'package:chronic_tracker/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final _appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/testScreen',
      builder: (context, state) => TestScreen(),
    )
  ],
);