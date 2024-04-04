import 'dart:io';

class Calculator {
  Calculator();

  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 == 0) {
      throw Exception("Cannot divide by zero");
    }
    return num1 / num2;
  }

  void runCalculator() {
    print("Welcome to Simple Calculator!");
    print("Enter 'quit' to exit.");

    while (true) {
      stdout.write("Enter first number: ");
      var input1 = stdin.readLineSync();
      if (input1 == 'quit') break;

      stdout.write("Enter second number: ");
      var input2 = stdin.readLineSync();
      if (input2 == 'quit') break;

      stdout.write("Enter operation (+, -, *, /): ");
      var operation = stdin.readLineSync();
      if (operation == 'quit') break;

      try {
        var num1 = double.tryParse(input1!);
        var num2 = double.tryParse(input2!);

        if (num1 == null || num2 == null) {
          throw Exception("Invalid input. Please enter valid numbers.");
        }

        switch (operation) {
          case '+':
            print("Result: ${add(num1, num2)}");
            break;
          case '-':
            print("Result: ${subtract(num1, num2)}");
            break;
          case '*':
            print("Result: ${multiply(num1, num2)}");
            break;
          case '/':
            print("Result: ${divide(num1, num2)}");
            break;
          default:
            print("Invalid operation!");
        }
      } catch (e) {
        print(e.toString());
      }
    }
    print("Goodbye!");
  }
}

void main() {
  Calculator().runCalculator();
}
