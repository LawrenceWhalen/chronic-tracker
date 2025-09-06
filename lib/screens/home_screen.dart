import 'package:flutter/material.dart';
import '../widgets/custom_navigation_bar.dart';
import 'package:chronic_tracker/navigation/nav_button_build_maps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
          child: Card(
              color: Theme.of(context).primaryColor
          )
      ),
        bottomNavigationBar: CustomNavigationBar(navButtonBuildList: setIsCurrent(0).returnMap),
    );
  }
}
