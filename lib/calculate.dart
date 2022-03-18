import 'dart:math';

class Calculate {
  final int? height;
  final int? weight;
  double? _bmi;
  Calculate({required this.height, required this.weight});
  String CalculateBMI() {
    _bmi = (weight! / pow(height! / 100, 2));
    return _bmi!.toDouble().toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25.0)
      return 'OVER WEIGHT';
    else if (_bmi! > 18.5)
      return 'NORMAL';
    else
      return 'UNDER WEIGHT';
  }

  String GetInterpritation() {
    if (_bmi! >= 25)
      return 'you have higher than the normal body weight. Try exercoise more.';
    else if (_bmi! >= 18.5)
      return 'Your BMI is normal. Keep it up!!!';
    else
      return 'You have low body weight than the normal. Try to eat more.';
  }
}
