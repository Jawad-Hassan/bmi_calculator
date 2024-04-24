import 'dart:math';

class BmiCalculate {

  final int weight;
  final int height;
  late  double bmi;

  BmiCalculate ({required this.height,required this.weight});

  String findBMI() {
    bmi =  weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String ShowData()
  {
    if (bmi >= 24.9)
      {
        return 'Your are Overweight';
      }
    else if (bmi < 18)
    {
      return 'Your are Underweight';
    }
    else
      {
        return 'Your BMI is Normal';
      }
  }
}

