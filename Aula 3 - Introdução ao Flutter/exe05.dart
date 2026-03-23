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

  Widget buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter layout demo"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: ListView(
        children: [

          Image.network(
            "https://picsum.photos/600/300",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [

          
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Oeschinen Lake Campground",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Kandersteg, Switzerland",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

    
                const Icon(Icons.star, color: Colors.red),
                const SizedBox(width: 4),
                const Text("41"),
              ],
            ),
          ),

    
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(Icons.call, "CALL"),
                buildButton(Icons.near_me, "ROUTE"),
                buildButton(Icons.share, "SHARE"),
              ],
            ),
          ),

 
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
              "Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. "
              "A gondola ride from Kandersteg, followed by a half-hour walk through pastures "
              "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in "
              "the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}