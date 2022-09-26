String timeConverter(double min) {
  num rt = min;
  final num d = min ~/ 1440;

  rt = min - (d * 1440);
  final num h = rt ~/ 60;

  rt = rt - (h * 60);
  final num m = rt ~/ 1;

  rt = rt - m;
  final num s = (rt * 60) ~/ 1;

  List<String> t = [];

  if (d != 0) {
    t.add(d == 1 ? "$d dia" : "$d dias");
  }

  if (h != 0) {
    t.add(h == 1 ? "$h hora" : "$h horas");
  }

  if (m != 0) {
    t.add(m == 1 ? "$m minuto" : "$m minutos");
  }

  if (s != 0) {
    t.add(s == 1 ? "$s segundo" : "$s segundos");
  }

  switch (t.length) {
    case 4:
      return "${t[0]}, ${t[1]}, ${t[2]} e ${t[3]}";
    case 3:
      return "${t[0]}, ${t[1]} e ${t[2]}";
    case 2:
      return "${t[0]} e ${t[1]}";
    default:
      return "${t[0]}";
  }
}

void main() {
  // Esperado: 1 dia, 13 horas e 14 minutos
  print("Caso 1: " + timeConverter(2234));

  // Esperado: 17 horas e 45 minutos
  print("Caso 2: " + timeConverter(1065));

  // Esperado: 45 minutos
  print("Caso 3: " + timeConverter(45));

  // Esperado: 3 dias, 20 horas e 35 minutos
  print("Caso 4: " + timeConverter(5555));

  // Esperado: 1 dia, 5 horas, 2 minutos e 42 segundos
  print("Caso 4: " + timeConverter(1742.7));
}
