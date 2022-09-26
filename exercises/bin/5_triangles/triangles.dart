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
  // Esperado: Triângulo Equilátero
  print("Caso 1: " + verifyTriangle(2, 2, 2));

  // Esperado: Não é possível formar um triângulo
  print("Caso 2: " + verifyTriangle(2, 2, 5));

  // Esperado: Triângulo Isósceles
  print("Caso 3: " + verifyTriangle(2, 1, 2));

  // Esperado: Triângulo Escaleno
  print("Caso 4: " + verifyTriangle(5, 12, 13));
}
