import 'package:flutter/material.dart'; 
 
void main() => runApp(MaterialApp( 
      home: Exercicio01(),  
      debugShowCheckedModeBanner: false, 
    )); 

class Exercicio01 extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Flutter is Fun!'), 
        backgroundColor: Colors.green, 
      ), 
      body: Center( 
        child: Container( 
          width: 120, 
          height: 120, 
          color: Colors.deepOrange, 
          child: const Center(
            child: Text( 
            'Hi Mom 🔥', 
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: 
FontWeight.bold),
             ),
          ), 
        ), 
      ), 
    ); 
  } 
} 