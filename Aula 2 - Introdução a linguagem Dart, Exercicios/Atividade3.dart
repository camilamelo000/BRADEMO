  // exercicio 03
class Laptop {
  int id;
  String nome;
  String ram;
  String clockCpu;

  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  void mostrarDetalhes() {
    print("ID: $id | Nome: $nome | RAM: $ram | CPU: $clockCpu");
  }
}

void main() {
  Laptop(201, "MacBook Air M1", "8GB", "3.2GHz").mostrarDetalhes();
  Laptop(202, "MacBook Air M2", "16GB", "3.5GHz").mostrarDetalhes();
  Laptop(203, "MacBook Pro M3", "32GB", "4.1GHz").mostrarDetalhes();
}