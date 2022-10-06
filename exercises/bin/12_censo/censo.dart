String floyd(List<int> list) {
  int higher = 0;
  int lesser = list[0];
  int even = list.where((number) => number % 2 == 0).length;
  int odd = list.length - even;
  int total = 0;
  

  for (var number in list) {
    if (number > higher) {
      higher = number;
    }

    if (number < lesser) {
      lesser = number;
    }

    total += number;
  }

  double average = total / list.length;

  return "Maior: $higher, Menor: $lesser, Média: $average, Ímpares: $odd, Pares: $even";
}

void main() {
  print("Caso 1: " + floyd([3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25]));
  
  print("Caso 2: " + floyd([28, 10, 23, 3, 29, 30, 22, 6, 2, 22, 8, 7, 27, 7]));
  
  print("Caso 3: " + floyd([30, 27, 7, 6, 35, 18, 22, 9, 17, 23, 53, 16, 35, 50, 8, 26, 43])); 
}
