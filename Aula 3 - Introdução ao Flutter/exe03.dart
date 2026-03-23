import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack & Positioned Widget"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      
      body: Center(
        child: Stack(
          children: [

       
            Positioned(
              top: 50,
              left: 20,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
                child: Text(
                "Black",
                style: TextStyle(color: Colors.white),
                )   
              ),
            ),

          
            Positioned(
              top: 90,
              left: 60,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.pink,
                child: Text(
                "Pink",
                style: TextStyle(color: Colors.white),
                )  
              ),
            ),

           
            Positioned(
              top: 130,
              left: 110,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.purple,
                child: Text(
                "Purple",
                style: TextStyle(color: Colors.white),
                )  
              ),
            ),
          ],
        ),
      ),
    );
  }
}