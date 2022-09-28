void crudList(List<int> list) {
  if (list.length > 5) {
    if (list.first == 0 && list.last == 10) {
      list.removeRange(1, list.length - 4);
    } else if (list[3] == 3) {
      list.first = 1;
      list.last = 9;
      list.removeRange(list.length - (list.length - 4), list.length - 1);
    } else {
      list.removeLast();
      if (list.length > 5) {
        list.removeAt(0);
        if (list.length > 5) {
          list.removeRange(0, list.length - 5);
        }
      }
    }
  } else {
    list.addAll([2, 2, 2, 2, 2]);
    list.removeRange(list.length - (list.length - 5), list.length);
    list[1] = 8;
  }

  final sum = list[1] + list[3];
  final div = list[4] / list[2];

  if (sum * div > 15) {
    print("Lista válida: $list");
  } else {
    print("Lista inválida: $list");
  }
}

void main() {
  // Esperado: Lista inválida
  crudList([2, 3]);

  // Esperado: Lista inválida
  crudList([0, 6, 8, 3, 1, 4]);

  // Esperado: Lista válida
  crudList([0, 3, 4, 5, 6, 7, 8, 9, 10]);

  // Esperado: Lista inválida
  crudList([1, 2, 3, 5, 6, 7]);

  // Esperado: Lista inválida
  crudList([10, 3, 6, 9, 4, 8, 7]);

  // Esperado: Lista válida
  crudList([8, 7, 10, 4, 5, 6, 9, 2]);

  // Esperado: Lista válida
  crudList([4, 9, 2, 3, 5]);

}