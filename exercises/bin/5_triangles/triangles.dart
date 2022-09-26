String verifyTriangle(int a, int b, int c) {
  if (a + b <= c || a + c <= b || b + c <= a) {
    return "Não é possível formar um triângulo";
  }

  if (a == b  && a == c) {
    return "Triângulo Equilátero";
  } else if (a != b  && a != c) {
    return "Triângulo Escaleno";
  }  else {
    return "Triângulo Isósceles";
  }
}

void main() {
  // Esperado: Abaixo do Peso
  print("Caso 1: " + verifyTriangle(2, 2, 2));

  // Esperado: Acima do Peso
  print("Caso 2: " + verifyTriangle(2, 2, 5));

  // Esperado: Peso Normal
  print("Caso 3: " + verifyTriangle(2, 1, 2));

  // Esperado: Obesidade
  print("Caso 4: " + verifyTriangle(5, 12, 13));
}
