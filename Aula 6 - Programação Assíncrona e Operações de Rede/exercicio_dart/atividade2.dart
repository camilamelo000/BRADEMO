Future<String> fetchNewUsername() async {
  return Future.delayed(
    Duration(seconds: 2),
    () => throw Exception('Erro ao buscar usuário'),
  );
}

Future<String> changeUsername() async {
  try {
    String username = await fetchNewUsername();
    return username;
  } catch (erro) {
    return erro.toString();
  }
}

void main() async {
  print('Alterando usuário...\n');

  String resultado = await changeUsername();

  print(resultado);
}