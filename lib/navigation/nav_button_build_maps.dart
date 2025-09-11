import 'package:flutter/material.dart';
import 'package:chronic_tracker/models/buildModels.dart';

  final Map allButtonMaps ={
    'test': Map.of(testButtonData)
  };

  final Map testButtonData = {
    'Home': {
    'icon': Icons.home,
    'label': 'Home',
    'path': '/homeScreen',
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
      if (value['label'].compareTo(currentPage) == 0) {
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