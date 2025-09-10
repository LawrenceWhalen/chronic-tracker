import 'package:flutter/material.dart';

import '../classes/screen_shell.dart';
import '../navigation/nav_button_build_maps.dart';
import '../widgets/custom_navigation_bar.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  @override
  Widget build(BuildContext context) {
      return ScreenShell(
          key: Key('Test Screen'),
          body: Card(
              color: Theme.of(context).primaryColor
          ),
          navButtonRouteTree: 'test',
          currentPage: 'Test'
      );
    }
  }