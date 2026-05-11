Future<String> fetchUserRole() async {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'administrador',
  );
}

Future<int> fetchLoginAmount() async {
  return Future.delayed(
    Duration(seconds: 2),
    () => 15,
  );
}

Future<String> reportUserRole() async {
  String role = await fetchUserRole();
  return 'Função do usuário: $role';
}

Future<String> reportLogins() async {
  int logins = await fetchLoginAmount();
  return 'Total de logins: $logins';
}

void main() async {
  print('Carregando informações...\n');

  print(await reportUserRole());
  print(await reportLogins());
}