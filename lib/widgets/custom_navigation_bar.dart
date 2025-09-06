import 'package:flutter/material.dart';
import '../resources/buildMaps.dart';
import 'button_widgets.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key, required this.navButtonBuildList});

  final List navButtonBuildList;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      key: Key('navigationBar'),
      label: 'Navigation Bar',
      child: Container(
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: navButtonBuildList.map(
                    (item) => CustomNavigationBarButton(navButtonBuildMap: item)
            ).toList()
          )
      )
    );
  }
}