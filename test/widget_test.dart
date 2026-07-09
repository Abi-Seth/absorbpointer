import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_flutter_app/main.dart';

void main() {
  testWidgets('shows the AbsorbPointer demo and toggles tap handling', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('AbsorbPointer Example'), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
    expect(find.text('Button is DISABLED'), findsOneWidget);
    expect(find.text('Enable Tap'), findsOneWidget);

    await tester.tap(find.text('Click Me'), warnIfMissed: false);
    await tester.pump();
    expect(find.text('Button Clicked'), findsNothing);

    await tester.tap(find.text('Enable Tap'));
    await tester.pump();

    expect(find.text('Button is ENABLED'), findsOneWidget);
    expect(find.text('Disable Tap'), findsOneWidget);

    await tester.tap(find.text('Click Me'));
    await tester.pump();
    expect(find.text('Button Clicked'), findsOneWidget);
  });
}
