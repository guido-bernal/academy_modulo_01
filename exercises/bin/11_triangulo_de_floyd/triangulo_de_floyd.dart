void floyd(int number) {
  int count = 1;

  for (var i = 0; i < number; i++) {
    String line = '';
    for (var j = 0; j < i; j++) {
      line += "$count ";
      count++; 
    }
    print(line);
  } 
}

void main() {
  floyd(3);

  floyd(10);

  floyd(6);
}
