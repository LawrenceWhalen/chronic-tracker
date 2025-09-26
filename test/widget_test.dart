// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:chronic_tracker/classes/my_app.dart';
import 'package:chronic_tracker/screens/test_home_screen.dart';
import 'package:chronic_tracker/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:chronic_tracker/widgets/button_widgets.dart';
import 'package:chronic_tracker/models/buildModels.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks/go_router_mock.dart';

void main() {
  testWidgets('App Boot Test', (WidgetTester tester) async {

    //load app widget
    await tester.pumpWidget(const MyApp());

  });

  testWidgets('Navigation Button Widget Build Test', (WidgetTester tester) async {

    //create a navigation button for a different page
    await tester.pumpWidget(Directionality(textDirection: TextDirection.ltr, child: CustomNavigationBarButton(navButtonBuildModel: NavButtonBuildModel.fromMap(
        {'icon': Icons.favorite, 'label': 'Favorite', 'path': '/favorite', 'isCurrentLocation':  false}
    ))));

    //expect to find the button without any text
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.text('Favorite'), findsNothing);

    //create a navigation button for the current page
    await tester.pumpWidget(Directionality(textDirection: TextDirection.ltr, child: CustomNavigationBarButton(navButtonBuildModel: NavButtonBuildModel.fromMap(
        {'icon': Icons.abc, 'label': 'Alphabet', 'path': '/alphabet', 'isCurrentLocation':  true}
    ))));

    //expect to find the button with text
    expect(find.byIcon(Icons.abc), findsOneWidget);
    expect(find.text('Alphabet'), findsOneWidget);

  });

  testWidgets('Navigation Bar Build Test', (WidgetTester tester) async {
    //build a navigation bar using test maps
    await tester.pumpWidget(Container(
      height: 150,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: CustomNavigationBar(
          routeTreeName: 'test',
          currentPageName: 'TestHome',
        )
      )
    ));

    //ensure correct number and composition of buttons
    expect(find.byType(CustomNavigationBarButton), findsExactly(2));
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.wifi), findsOneWidget);
    expect(find.text('Test Home'), findsOneWidget);
    expect(find.text('Test Screen'), findsNothing);
  });

  testWidgets('Navigation Bar Router Test', (WidgetTester tester) async {
    (tester) async {
      //create mock router
      final mockGoRouter = MockGoRouter();

      //build out home screen
      await tester.pumpWidget(
        MaterialApp(
          home: MockGoRouterProvider(
              goRouter: mockGoRouter,
              child: TestHomeScreen())
        )
      );

      //test app bar is making correct call
      await tester.tap(find.byKey(Key('Test')));

      await tester.pumpAndSettle();

      verify(() => mockGoRouter.go('/Test')).called(1);
      verifyNever(() => mockGoRouter.go('/TestHome'));
    };
  });
}
