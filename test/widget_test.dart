import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/main.dart';

void main() {
  testWidgets('Portfolio app displays name and Click Me button',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PortfolioApp());

    expect(find.text('Bejay C. Dayao'), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(GestureDetector), findsWidgets);
  });

  testWidgets('Click Me button responds to tap', (WidgetTester tester) async {
    await tester.pumpWidget(const PortfolioApp());

    await tester.tap(find.text('Click Me'));
    await tester.pump();

    expect(find.text('Click Me'), findsOneWidget);
  });
}