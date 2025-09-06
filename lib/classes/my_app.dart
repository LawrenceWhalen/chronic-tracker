import 'package:chronic_tracker/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:chronic_tracker/navigation/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: MaterialApp.router(
          theme: darkTheme,
          routerConfig: appRouter,
        )
    );
  }
}