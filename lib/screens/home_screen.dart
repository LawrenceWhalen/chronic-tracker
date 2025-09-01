import 'package:flutter/material.dart';
import 'package:chronic_tracker/themes/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            color: Theme.of(context).primaryColor
          ),
        ]
      )
    );
  }
}
