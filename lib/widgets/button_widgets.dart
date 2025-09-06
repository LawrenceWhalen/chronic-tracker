import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:chronic_tracker/resources/buildMaps.dart';

class CustomNavigationBarButton extends StatefulWidget {
  const CustomNavigationBarButton({super.key, required this.navButtonBuildMap});

  final NavButtonBuildMap navButtonBuildMap;

  @override
  State<CustomNavigationBarButton> createState() => _CustomNavigationBarButtonState();
}

class _CustomNavigationBarButtonState extends State<CustomNavigationBarButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.navButtonBuildMap.label,
      child: FilledButton(
          onPressed: () => {context.go(widget.navButtonBuildMap.path)},
          child: Row(
            children: [
              Icon(widget.navButtonBuildMap.icon),
              Text(widget.navButtonBuildMap.isCurrentLocation ? widget.navButtonBuildMap.label : ''),
            ],
          )
      )
    );
  }
}


/*
InkWell(
onTap: () => {context.go(widget.navButtonBuildMap.path)},
onHover: (hovering) {
setState(() => isHovering = hovering);
},
focusColor: ,
child: AnimatedContainer(
duration: const Duration(milliseconds: 200),
padding: EdgeInsets.all(isHovering ? 15 : 10),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Theme.of(context).elevatedButtonTheme.style?.backgroundColor.resolve(Set<WidgetState> states),
),
child: Row(
children: [
Icon(widget.navButtonBuildMap.icon),
Text(widget.navButtonBuildMap.label),
],
),
),
),*/
