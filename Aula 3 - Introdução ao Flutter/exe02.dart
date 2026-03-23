import 'package:flutter/material.dart'; 
 
void main() => runApp(MaterialApp( 
      home: Exercicio02(),  
      debugShowCheckedModeBanner: false, 
    )); 

class Exercicio02 extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(
      title: const Text("Exercicio 02"),
      backgroundColor: Color(0xFFB39DDB),
      ),
      body: Center( 
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [ 
            _buildButtonColumn(Icons.call, "CALL"), 
            _buildButtonColumn(Icons.near_me, "ROUTE"), 
            _buildButtonColumn(Icons.share, "SHARE"), 
          ], 
        ), 
      ), 
    ); 
  } 
 
  Column _buildButtonColumn(IconData icon, String label) { 
    return Column( 
      mainAxisSize: MainAxisSize.min, 
      children: [ 
        Icon(icon, color: Colors.purple), 
        Container( 
          margin: const EdgeInsets.only(top: 8), 
          child: Text(label, style: TextStyle(color: Colors.purple, fontSize: 12)), 
        ), 
      ], 
    ); 
  } 
} 
