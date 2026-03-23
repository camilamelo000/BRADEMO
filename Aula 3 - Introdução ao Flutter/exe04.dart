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
        title: const Text("Insert Image Example"),
        backgroundColor: Color(0xFFFF8FAB), 
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [

 
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              height: 180,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_656/b_white/f_auto/q_auto/store/software/switch/70050000061002/a70b6f8c4d7a37dce622180aabbe91d51ffffd79e57e1227ed8d97e9f3d551ef",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),
  
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(     
                "https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_1.5/c_scale,w_700/store/software/switch/70050000061002/c488d7905dc8439244b5d88df2d130a25bc9ff0f2fc95591d65122640d2184b5",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}