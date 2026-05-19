import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Contador(),
      child: const MyApp(),
    ),
  );
}

class Contador extends ChangeNotifier {
  int valor = 0;

  void incrementar() {
    valor++;
    notifyListeners();
  }

  void decrementar() {
    valor--;
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

    final contador = Provider.of<Contador>(context);

    return Scaffold(
      backgroundColor: Color.deepPurple.shade100,

      appBar: AppBar(
        title: const Text("Contador Provider"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade600,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              "Valor do contador",
              style: TextStyle(
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "${contador.valor}",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                ElevatedButton(
                  onPressed: () {
                    contador.decrementar();
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple.shade800,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                  ),

                  child: const Text(
                    "Decrementar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    contador.incrementar();
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple.shade800,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                  ),

                  child: const Text(
                    "Incrementar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}