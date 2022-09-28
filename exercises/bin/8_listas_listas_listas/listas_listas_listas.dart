void main() {
  final listA = List.empty(growable: true); 
  print("Lista A: $listA");

  final listB = List.filled(4, 2.2);
  print("Lista B: $listB");

  final listC = List.unmodifiable(listB);
  print("Lista C: $listC");

  final listD = [...listC, 2, 3];
  print("Lista D: $listD");

  print("----------------");

  final listE = listA + listC;
  print("Lista E: $listE");

  var listF = [ if (listE.length == 4) 2.2, 5, 10]; 
  print("Lista F: $listF");

  print(listE == listB);

  listD.clear();
  print("Lista D: $listD");

  print(listF[0] == listC[listC.length - 1]);
  // print(listF.first == listC.last);

  final listG = listF;
  listF.add(5); 
  print(listF == listG);
}
