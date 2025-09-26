import 'package:flutter/material.dart';
import 'package:chronic_tracker/models/buildModels.dart';

  final Map allButtonMaps ={
    'test': Map.of(testButtonData)
  };

  final Map testButtonData = {
    'TestHome': {
    'icon': Icons.home,
    'label': 'Test Home',
    'path': '/testHomeScreen',
    'isCurrentLocation': false
    },
    'Test': {
    'icon': Icons.wifi,
    'label': 'Test',
    'path': '/testScreen',
    'isCurrentLocation': false
  }};

  Map setIsCurrent(Map buttonData, String currentPage) {
    Map buttonDataLocal = {};
    buttonDataLocal = Map.of(buttonData);

    buttonDataLocal.forEach((i, value){
      if (i.compareTo(currentPage) == 0) {
        value['isCurrentLocation'] = true;
      } else {
        value['isCurrentLocation'] = false;
      }
    });


    return buttonDataLocal;
  }

  List buildButtonDateMap(Map buttonDataUnset, String currentPage){
    List buttonBuildMap = [];
    Map buttonDataSet = {};

    buttonDataSet = Map.of(setIsCurrent(buttonDataUnset, currentPage));

    buttonDataSet.forEach((i, value){
      buttonBuildMap.add(NavButtonBuildModel.fromMap(value));
    });
    return buttonBuildMap;
  }

class NavButtonBuildMap{
    late String currentPage;
    late String routeTreeName;
    late List buttonBuildList;

    NavButtonBuildMap.createButtonMap(this.currentPage, this.routeTreeName){
      Map buttonDataUnset = Map.of(allButtonMaps[routeTreeName]);
      buttonBuildList = buildButtonDateMap(buttonDataUnset, currentPage);
    }

    NavButtonBuildMap({required this.currentPage, required this.routeTreeName});
}