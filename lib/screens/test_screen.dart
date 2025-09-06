import 'package:flutter/material.dart';

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
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          body:Card(
            color: Theme.of(context).primaryColor
          ),
          bottomNavigationBar: CustomNavigationBar(navButtonBuildList: setIsCurrent(1).returnMap),
    )
    );
  }
}