// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_bmi_calculator/constants.dart';
import 'components/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: const InputPage(),
    );
  }
}
