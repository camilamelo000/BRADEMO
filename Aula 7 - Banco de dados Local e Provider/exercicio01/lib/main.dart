import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox('config');

  runApp(const MyApp());
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final box = Hive.box('config');

  bool modoRelax = true;

  @override
  void initState() {
    super.initState();

    modoRelax = box.get('modoRelax', defaultValue: true);
  }

  void alternarModo() {
    setState(() {
      modoRelax = !modoRelax;
    });

    box.put('modoRelax', modoRelax);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          modoRelax ? Colors.deepPurple: Colors.purpleAccent,
      body: Center(
        child: ElevatedButton(
          onPressed: alternarModo,

          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              modoRelax
                  ? "Modo Relax"
                  : "Modo Focado",

              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}