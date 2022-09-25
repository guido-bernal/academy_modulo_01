String tempConverter(double celsius) {
  final double celsiusToFahrenheit = ((9 * celsius) + 160) / 5;

  return celsiusToFahrenheit % 1 == 0 ? 
  celsiusToFahrenheit.toStringAsFixed(0) : 
  celsiusToFahrenheit.toStringAsFixed(1);
}

void main() {
  // Esperado: 89.6
  print("Caso 1: " + tempConverter(32) + " °F");

  // Esperado: 68
  print("\nCaso 2: " + tempConverter(20) + " °F");

  // Esperado: 113
  print("\nCaso 3: " + tempConverter(45) + " °F");
}
