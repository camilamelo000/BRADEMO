import 'package:flutter/material.dart';
import '../home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  void _validar() {
    if (_userController.text == "admin" && _passController.text == "1234") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Ops! Senha incorreta 🦄'), 
          backgroundColor: Colors.pinkAccent
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _userController,
          decoration: const InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.purple),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple, width: 2)),
            prefixIcon: Icon(Icons.person, color: Colors.purple),
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _passController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.purple),
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple, width: 2)),
            prefixIcon: Icon(Icons.lock, color: Colors.purple),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {}, 
            child: const Text("Forgot Password?", style: TextStyle(color: Colors.pinkAccent)),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: _validar,
            child: const Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}