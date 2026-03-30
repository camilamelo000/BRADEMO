import 'package:flutter/material.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        title: const Text("Pony Magic Login", style: TextStyle(fontWeight: FontWeight.bold)), 
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Icon(Icons.auto_awesome, size: 100, color: Colors.purple), 
              const SizedBox(height: 10),
              const Text("Welcome Back!", style: TextStyle(fontSize: 22, color: Colors.purple, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              const LoginForm(),
              const SizedBox(height: 30),
              const Text("New User? Create Account", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}