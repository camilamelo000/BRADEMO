class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Entendendo Constraints')),
        body: const ConstrainedExamples(),
      ),
    );
  }
}

class ConstrainedExamples extends StatelessWidget {
  const ConstrainedExamples({super.key});

  @override
  Widget build(BuildContext context) {
    
    // EXEMPLO 1: 
    return Container(color: Colors.red, width: 100, height: 100);

    /* // EXEMPLO 2:  
    return Center(
      child: Container(color: Colors.blue, width: 100, height: 100),
    );
    */

    /*
    // EXEMPLO 3:
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70, 
          minHeight: 70,
          maxWidth: 150, 
          maxHeight: 150,
        ),
        child: Container(color: Colors.green, width: 10, height: 10), // Ele vai ignorar o 10 e usar 70
      ),
    );
    */

    /*
    // EXEMPLO 4: 
    return Center(
      child: UnconstrainedBox(
        child: Container(color: Colors.orange, width: 4000, height: 50),
      ),
    );
    */
  }
}