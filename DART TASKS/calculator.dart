import 'dart:async';
import 'dart:io';

class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) {
    if (b == 0) {
      throw Exception("Division by zero is not allowed.");
    }
    return a / b;
  }
}

Future<void> main() async {
  final calculator = Calculator();
  bool continueCalculating = true;

  while (continueCalculating) {
    try {
      stdout.write('Enter first number: ');
      double num1 = double.parse(stdin.readLineSync()!);

      stdout.write('Enter second number: ');
      double num2 = double.parse(stdin.readLineSync()!);

      stdout.write('Enter an operator (+, -, *, /): ');
      String operator = stdin.readLineSync()!;

      double result;

      switch (operator) {
        case '+':
          result = calculator.add(num1, num2);
          break;
        case '-':
          result = calculator.subtract(num1, num2);
          break;
        case '*':
          result = calculator.multiply(num1, num2);
          break;
        case '/':
          result = calculator.divide(num1, num2);
          break;
        default:
          throw Exception("Invalid operator. Please use +, -, *, or /.");
      }

      print('Calculating...');
      await Future.delayed(Duration(seconds: 5));
      print('Result: $result');
    } catch (e) {
      print('Error: ${e.toString()}');
    }

    stdout.write('Do you want to perform another calculation? (y/n): ');
    String? response = stdin.readLineSync();
    continueCalculating = response?.toLowerCase() == 'y';
  }

  print('Thank you for using the calculator!');
}
