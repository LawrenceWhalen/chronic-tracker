import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
        label: 'App Bar',
        key: Key('App Bar'),
        child: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text('Chronic Tracker'),
        /* actions: <Widget>[
          Semantics(
            label: 'Back Button',
            key: Key('Back Button'),
            child: IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Return To Last Page',
              onPressed: () {
                context.pop(true);
              },
            ),
          ),
        ],
         */
        )
    );
  }
}