String isCapicua(int number) {
  final String d1 = number.toString()[0];
  final String d2 = number.toString()[1];
  final String d4 = number.toString()[3];
  final String d5 = number.toString()[4];

  if (d1 == d5 && d2 == d4) {
    return "Capicua";
  } else {
    if (d1 != d5) {
      return "Não é capicua pois o primeiro dígito é diferente do quinto";
    } else {
      return "Não é capicua pois o segundo dígito é diferente do quarto";
    }
    
  }
}

void main() {
  // Esperado: Capicua
  print("Caso 1: " + isCapicua(10201));

  // Esperado: Capicua
  print("Caso 2: " + isCapicua(52425));

  // Esperado: Não é capicua
  print("Caso 3: " + isCapicua(32713));

  // Esperado: Capicua
  print("Caso 4: " + isCapicua(99999));
}
