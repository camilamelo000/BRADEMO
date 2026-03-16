void main() {
  // exercicio 01
  var equipamento = "Impressora 3D";
  String local = "Lab de Prototipos";
  dynamic patrimonio = 12345;

  print('$equipamento\n$local\n$patrimonio');

  patrimonio = "12345-A";

  print('$equipamento\n$local\n$patrimonio');

  print(equipamento is String); // true
  print(local is String); // true
  print(patrimonio is String); // true

  // o Dart permite alterar o tipo de "patrimonio" porque ele é dynamic(e ele não fixa um tipo para a variavel), enquanto "local" é String e só aceita valores desse mesmo tipo.
}
