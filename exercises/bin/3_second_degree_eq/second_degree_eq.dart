import 'dart:math';

String secondDegreeEq(int a, int b, int c) {
  final num delta = pow(b, 2) - (4 * a * c);

  final num x1 = (-b + sqrt(delta)) / (2 * a);

  final num x2 = (-b - sqrt(delta)) / (2 * a);

  return "x1 = $x1, x2 = $x2";
}

void main() {
  // x² - x - 12
  // Esperado: x1 = 4, x2 = -3
  print("Caso 1: " + secondDegreeEq(1, -1, -12));

  // x² - 5x + 6
  // Esperado: x1 = 3, x2 = 2
  print("\nCaso 2: " + secondDegreeEq(1, -5, 6));

  // 2x² - 8x + 8
  // Esperado: x1 = 2, x2 = 2
  print("\nCaso 3: " + secondDegreeEq(2, -8, 8));
}
