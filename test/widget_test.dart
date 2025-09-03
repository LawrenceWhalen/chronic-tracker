// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:chronic_tracker/classes/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  testWidgets('App Boot Test', (WidgetTester tester) async {

    //load app widget
    await tester.pumpWidget(const MyApp());

  });

  testWidgets('Navigation bar Test', (WidgetTester tester) async {

    //load app widget
    await tester.pumpWidget(MaterialApp(home: Material(child: Container())));
    final BuildContext context = tester.element(find.byType(Container));

    var routeList = GoRouter.of(context).configuration.routes;

    //search for navigation bar by key
    expect(find.byKey(const ValueKey('navigationBar')), findsOneWidget);

    //Check we are on the first screen
    expect(GoRouterState.of(context).uri.toString(), equals(routeList[0]));

    //Find and press the test screen button
    expect(find.byKey(const ValueKey('test screen')), findsOneWidget);
    final testButton = find.byKey(const ValueKey('secondNavigationButton'));
    await tester.tap(testButton);

    //Check we are on the test screen
    expect(GoRouterState.of(context).uri.toString(), equals(routeList[1]));

  });
}
