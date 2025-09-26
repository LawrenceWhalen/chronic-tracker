import 'package:chronic_tracker/classes/screen_shell.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_navigation_bar.dart';
import 'package:chronic_tracker/navigation/nav_button_build_maps.dart';

class TestHomeScreen extends StatefulWidget {
  const TestHomeScreen({super.key});

  @override
  State<TestHomeScreen> createState() => _TestHomeScreenState();
}

class _TestHomeScreenState extends State<TestHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return ScreenShell(
        key: Key('Test Home Screen'),
        body: Card(
            color: Theme.of(context).primaryColor
        ),
        navButtonRouteTree: 'test',
        currentPage: 'TestHome'
    );
  }
}
