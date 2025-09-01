import 'package:flutter/material.dart';
import 'package:chronic_tracker/navigation/app_routes.dart';
import 'package:chronic_tracker/widgets/bottom_navigation_bar.dart';
import 'package:chronic_tracker/themes/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      initialRoute: '/',
      routes: appRoutes
    );
  }
}