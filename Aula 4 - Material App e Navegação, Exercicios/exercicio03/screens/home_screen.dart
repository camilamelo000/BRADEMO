import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Pink World"), 
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFF3E5F5)], 
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.auto_fix_high, size: 180, color: Colors.purple),
            SizedBox(height: 20),
            Text(
              "Everything is Magical! ✨", 
              style: TextStyle(
                fontSize: 24, 
                color: Colors.purple, 
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: const Icon(Icons.star, color: Colors.pinkAccent),
      ),
    );
  }
}