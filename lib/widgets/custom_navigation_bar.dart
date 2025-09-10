import 'package:flutter/material.dart';
import '../navigation/nav_button_build_maps.dart';
import 'button_widgets.dart';

class CustomNavigationBar extends StatefulWidget {
  CustomNavigationBar({super.key, required this.routeTreeName, required this.currentPageName});

  final String routeTreeName;
  final String currentPageName;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late List<Widget> orderedNavButtons;

  late List buttonSetBuildList;

  late NavButtonBuildMap navButtonBuildMap;

  List<Widget> createNavButtons(){
    orderedNavButtons = [];
    buttonSetBuildList = [];
    navButtonBuildMap = NavButtonBuildMap.createButtonMap(widget.currentPageName, widget.routeTreeName);
    buttonSetBuildList =  List.of(navButtonBuildMap.buttonBuildList);
    buttonSetBuildList.forEach((item) {
      orderedNavButtons.add(CustomNavigationBarButton(navButtonBuildModel: item, key: Key(item.label)));
    });
    return orderedNavButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
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