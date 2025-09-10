import 'package:flutter/material.dart';
import 'package:chronic_tracker/models/buildModels.dart';

  final Map allButtonMaps ={
    'test': testButtonData
  };

  final Map testButtonData = {
    'home': {
    'icon': Icons.home,
    'label': 'Home',
    'path': '/homeScreen',
    'isCurrentLocation': false
    },
    'test': {
    'icon': Icons.wifi,
    'label': 'Test',
    'path': '/testScreen',
    'isCurrentLocation': false
  }};

  Map setIsCurrent(Map buttonData, String currentPage) {
    Map buttonDataLocal = buttonData;

    buttonDataLocal[currentPage].update('isCurrentLocation', (value) => true);
    return buttonDataLocal;
  }

  List buildButtonDateMap(Map buttonDataUnset, String currentPage){
    List buttonBuildMap = [];

    Map buttonDataSet = setIsCurrent(buttonDataUnset, currentPage);

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
      Map buttonDataUnset = allButtonMaps[routeTreeName];
      buttonBuildList = buildButtonDateMap(buttonDataUnset, currentPage);
    }

    NavButtonBuildMap({required this.currentPage, required this.routeTreeName});
}