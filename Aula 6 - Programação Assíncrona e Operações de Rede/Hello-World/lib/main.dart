import 'package:flutter/material.dart';
import 'post_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostService service = PostService();

  List posts = [];

  @override
  void initState() {
    super.initState();

    carregarPosts();
  }

  Future<void> carregarPosts() async {
    posts = await service.getPosts();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSONPlaceholder API'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                posts[index]['title'],
              ),
              subtitle: Text(
                posts[index]['body'],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () async {
              var post = await service.createPost();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'POST criado: ${post['title']}',
                  ),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () async {
              await service.updatePost(1);

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('PUT realizado'),
                ),
              );
            },
            child: const Icon(Icons.edit),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () async {
              bool deletado = await service.deletePost(1);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    deletado ? 'DELETE realizado' : 'Erro ao deletar',
                  ),
                ),
              );
            },
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
