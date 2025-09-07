import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/buildModels.dart';

class CustomNavigationBarButton extends StatefulWidget {
  const CustomNavigationBarButton({super.key, required this.navButtonBuildModel});

  final NavButtonBuildModel navButtonBuildModel;

  @override
  State<CustomNavigationBarButton> createState() => _CustomNavigationBarButtonState();
}

class _CustomNavigationBarButtonState extends State<CustomNavigationBarButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.navButtonBuildModel.label,
      child: Directionality(
          textDirection: TextDirection.ltr,
          child: FilledButton(
          onPressed: () => {context.go(widget.navButtonBuildModel.path)},
              style: Theme.of(context).elevatedButtonTheme.style,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.navButtonBuildModel.icon),
              widget.navButtonBuildModel.isCurrentLocation ? Text(widget.navButtonBuildModel.label) : Container(),
            ],
          )
      )
      )
    );
  }
}