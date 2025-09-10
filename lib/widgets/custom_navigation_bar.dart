import 'package:flutter/material.dart';
import '../navigation/nav_button_build_maps.dart';
import 'button_widgets.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key, required this.routeTreeName, required this.currentPageName});

  final String routeTreeName;
  final String currentPageName;

  List<Widget> createNavButtons(){
    List<Widget> orderedNavButtons = [];
    List buttonBuildList = NavButtonBuildMap.createButtonMap(currentPageName, routeTreeName).buttonBuildList;
    buttonBuildList.forEach((item) {
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
        height: 50,
        color: Theme.of(context).appBarTheme.foregroundColor,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: createNavButtons()
          )
      )
    );
  }
}