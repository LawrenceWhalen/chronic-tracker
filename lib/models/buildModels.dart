import 'package:flutter/material.dart';

class NavButtonBuildModel {
  NavButtonBuildModel({required this.icon, required this.label, required this.path, required this.isCurrentLocation});

  late IconData icon;
  late String label;
  late String path;
  late bool isCurrentLocation;

  NavButtonBuildModel.fromMap(Map buildMap) {
    icon = buildMap['icon'];
    label = buildMap['label'];
    path = buildMap['path'];
    isCurrentLocation = buildMap['isCurrentLocation'];
  }
}