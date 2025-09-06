import 'package:flutter/material.dart';
import 'package:chronic_tracker/models/buildModels.dart';
import '../models/buildModels.dart';

  final List homeScreenData = [{
    'icon': Icons.home,
    'label': 'Home Screen',
    'path': '/homeScreen',
    'isCurrentLocation': false
  },{
    'icon': Icons.wifi,
    'label': 'Test Screen',
    'path': '/testScreen',
    'isCurrentLocation': false
  }];

List<NavButtonBuildModel> navButtonBuildMapList = [];

  NavBuildMapReturn setIsCurrent(int currentPage) {
    homeScreenData[currentPage].update('isCurrentLocation', (value) => true);
    homeScreenData.forEach((item){
      navButtonBuildMapList.add(NavButtonBuildModel.fromMap(item));
    });
    return NavBuildMapReturn(navButtonBuildMapList);
  }


class NavBuildMapReturn{
  List returnMap;
  NavBuildMapReturn(this.returnMap);
}
