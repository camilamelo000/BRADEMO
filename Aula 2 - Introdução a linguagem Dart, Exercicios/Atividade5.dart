  // exercicio 05

import 'dart:io';

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> casas = [];

  for (int i = 0; i < 3; i++) {
    print("\nCadastro da casa ${i + 1}");

    stdout.write("ID: ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Nome: ");
    String name = stdin.readLineSync()!;

    stdout.write("Preço: ");
    double price = double.parse(stdin.readLineSync()!);

    House casa = House(id, name, price);

    casa..name = "${casa.name} (Cadastrada)";

    casas.add(casa);
  }

  print("\nCasas cadastradas:");

  for (var casa in casas) {
    print("ID: ${casa.id} | Nome: ${casa.name} | Preço: ${casa.price}");
  }
}