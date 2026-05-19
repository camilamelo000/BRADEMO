import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox('tarefasBox');

  runApp(
    ChangeNotifierProvider(
      create: (_) => TarefaProvider(),
      child: const MyApp(),
    ),
  );
}

class TarefaProvider extends ChangeNotifier {

  final Box box = Hive.box('tarefasBox');

  List<String> tarefas = [];

  TarefaProvider() {
    carregarTarefas();
  }

  void carregarTarefas() {
    tarefas = List<String>.from(
      box.get('listaTarefas', defaultValue: []),
    );

    notifyListeners();
  }

  void adicionarTarefa(String tarefa) {

    if (tarefa.trim().isEmpty) return;

    tarefas.add(tarefa);

    box.put('listaTarefas', tarefas);

    notifyListeners();
  }

  void removerTarefa(int index) {

    tarefas.removeAt(index);

    box.put('listaTarefas', tarefas);

    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController controller =
        TextEditingController();

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
        appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade600,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Consumer<TarefaProvider>(
          builder: (context, provider, child) {

            return Column(
              children: [

                TextField(
                  controller: controller,

                  decoration: InputDecoration(
                    hintText: "Digite uma tarefa",

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(20),
                    ),

                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.deepPurple.shade600,
                      ),

                      onPressed: () {

                        provider.adicionarTarefa(
                          controller.text,
                        );

                        controller.clear();
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: ListView.builder(
                    itemCount: provider.tarefas.length,

                    itemBuilder: (context, index) {

                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20),
                        ),

                        child: ListTile(

                          title: Text(
                            provider.tarefas[index],
                          ),

                          trailing: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.deepPurple.shade600,
                            ),

                            onPressed: () {
                              provider.removerTarefa(index);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}