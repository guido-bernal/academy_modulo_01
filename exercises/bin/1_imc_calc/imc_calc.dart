import 'dart:math';

String imcFormula(int peso, double altura) {
  final double imcFormula = peso / pow(altura, 2);

  return imcFormula.toStringAsFixed(2);
}

void main() {
  // Esperado: 27.68
  print("Caso 1: " + imcFormula(80, 1.70));

  // Esperado: 22.22
  print("\nCaso 2: " + imcFormula(50, 1.50));

  // Esperado: 32.41
  print("\nCaso 3: " + imcFormula(105, 1.80));
}
