// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:flutter_bmi_calculator/main.dart';

void main() {
  testWidgets('Basic test', (WidgetTester tester) async {
    await tester.pumpWidget(BMICalculator());
    expect(find.text('BMI Calculator'), findsOneWidget);
  });
}
