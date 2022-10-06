int fatorial(int number) {
  int res = 1;

  for (var i = 1; i < number + 1; i++) {
    res *= i;
  } 

  return res;
}

void main() {
  // Esperado: 120
  print("Caso 1: ${fatorial(5)}");

  // Esperado: 3628800
  print("\nCaso 2: ${fatorial(10)}");

  // Esperado: 1
  print("\nCaso 3: ${fatorial(0)}");

  // Esperado: 40320
  print("\nCaso 4: ${fatorial(8)}");
}
