  // exercicio 04

class Laptop {
  int id;
  String nome;
  String ram;
  String clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  Laptop.internet()
      : id = 201,
        nome = "MacBook Air M1",
        ram = "8GB",
        clockCpu = "3.2GHz";

  Laptop.escritorio()
      : id = 202,
        nome = "MacBook Air M2",
        ram = "16GB",
        clockCpu = "3.5GHz";

  Laptop.programacao()
      : id = 203,
        nome = "MacBook Pro M3",
        ram = "32GB",
        clockCpu = "4.1GHz";

  void mostrarDetalhes() {
    print("ID: $id | Nome: $nome | RAM: $ram | CPU: $clockCpu");
  }
}

void main() {
  var l1 = Laptop.internet();
  var l2 = Laptop.escritorio();
  var l3 = Laptop.programacao();

  l1.mostrarDetalhes();
  l2.mostrarDetalhes();
  l3.mostrarDetalhes();
}