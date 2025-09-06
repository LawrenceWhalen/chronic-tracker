import 'package:flutter/material.dart';

import '../models/buildModels.dart';

  final List homeScreenData = [{
    'icon': Icons.home,
    'label': 'Home Screen',
    'path': '/homeScreen',
    'isCurrentPage': false
  },{
    'icon': Icons.wifi,
    'label': 'Test Screen',
    'path': '/testScreen',
    'isCurrentPage': false
  }];

  NavBuildMapReturn setIsCurrent(int currentPage) {
    homeScreenData[currentPage]['isCurrentPage'] = true;
    var navButtonBuildMapList = homeScreenData.map(
            (item) => NavButtonBuildModel.fromMap(item)
    ).toList();
    return NavBuildMapReturn(navButtonBuildMapList);
  }


class NavBuildMapReturn{
  List returnMap;
  NavBuildMapReturn(this.returnMap);
}
