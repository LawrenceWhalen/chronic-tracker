import 'package:chronic_tracker/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_navigation_bar.dart';

class ScreenShell extends StatelessWidget {
  const ScreenShell({
    super.key,
    required this.body,
    required this.navButtonRouteTree,
    required this.currentPage,
  });

  final Widget body;
  final String navButtonRouteTree;
  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: SafeArea(
            bottom: true,
            top: true,
            child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: CustomAppBar()),
              body: body,
              bottomNavigationBar:  PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: CustomNavigationBar(
                  routeTreeName: navButtonRouteTree,
                  currentPageName: currentPage
              ),
            )
            )
        )
    );
  }
}
