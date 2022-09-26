import 'dart:math';

String imcTable(int peso, double altura) {
  final double imc = peso / pow(altura, 2);

  if (imc < 18.5) {
    return "Abaixo do Peso";
  } else if (imc < 25) {
    return "Peso Normal";
  } else if (imc < 30) {
    return "Acima do Peso";
  } else {
    return "Obesidade";
  }
}

void main() {
  // Esperado: Abaixo do Peso
  print("Caso 1: " + imcTable(42, 1.54));

  // Esperado: Acima do Peso
  print("\nCaso 2: " + imcTable(103, 1.88));

  // Esperado: Peso Normal
  print("\nCaso 3: " + imcTable(67, 1.74));

  // Esperado: Obesidade
  print("\nCaso 4: " + imcTable(88, 1.65));
}
