import 'package:flutter/material.dart';

class NavButtonBuildModel {
  NavButtonBuildModel({required this.icon, required this.label, required this.path, required this.isCurrentLocation});

  IconData? icon;
  String? label;
  String? path;
  bool? isCurrentLocation;

  NavButtonBuildModel.fromMap(Map buildMap) {
    icon = buildMap['icon'];
    label = buildMap['label'];
    path = buildMap['path'];
    isCurrentLocation = buildMap['isCurrentLocation'];
  }


}