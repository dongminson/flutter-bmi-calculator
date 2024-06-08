// Dart imports:
import 'dart:math';

class Compute {
  Compute({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getTextResult() {
    if (_bmi >= 30) {
      return 'You are obese';
    } else if (_bmi >= 25) {
      return 'You are overweight';
    } else if (_bmi >= 18.5) {
      return 'You have a normal weight';
    } else {
      return 'You are underweight';
    }
  }
}
