import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showOptions = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomAppBar with FAB')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('TAB: 3', style: TextStyle(fontSize: 24)),
            if (_showOptions) ...[
              const SizedBox(height: 10),
              _buildMiniFab(Icons.chat, Colors.blue[100]!),
              const SizedBox(height: 10),
              _buildMiniFab(Icons.email, Colors.blue[100]!),
              const SizedBox(height: 10),
              _buildMiniFab(Icons.phone, Colors.blue[100]!),
            ],
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showOptions = !_showOptions; 
          });
        },
        child: Icon(_showOptions ? Icons.close : Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), 
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTabItem(Icons.menu, "This"),
            _buildTabItem(Icons.layers, "Is"),
            const SizedBox(width: 40), 
            _buildTabItem(Icons.dashboard, "Bottom"),
            _buildTabItem(Icons.info, "Bar", color: Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(IconData icon, String label, {Color color = Colors.grey}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        Text(label, style: TextStyle(color: color, fontSize: 12)),
      ],
    );
  }

  Widget _buildMiniFab(IconData icon, Color color) {
    return FloatingActionButton.small(
      onPressed: () {},
      backgroundColor: color,
      child: Icon(icon, color: Colors.blue),
    );
  }
}