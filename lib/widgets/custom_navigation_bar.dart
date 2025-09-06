import 'package:flutter/material.dart';
import 'button_widgets.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key, required this.navButtonBuildList});

  final List navButtonBuildList;
  final List<Widget> orderedNavButtons = [];

  List<Widget> createNavButtons(){
    navButtonBuildList.forEach((item) {
      orderedNavButtons.add(CustomNavigationBarButton(navButtonBuildModel: item));
    });
    return orderedNavButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      key: Key('navigationBar'),
      label: 'Navigation Bar',
      child: Container(
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: createNavButtons()
          )
      )
    );
  }
}