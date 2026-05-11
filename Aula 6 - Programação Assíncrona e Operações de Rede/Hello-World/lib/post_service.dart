import 'dart:convert';
import 'package:http/http.dart' as http;

class PostService {
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<dynamic>> getPosts() async {
    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erro ao carregar posts');
    }
  }

  Future<dynamic> getPost(int id) async {
    final response = await http.get(
      Uri.parse('$url/$id'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erro ao carregar post');
    }
  }

  Future<dynamic> createPost() async {
    final response = await http.post(
      Uri.parse(url),
      body: {
        'title': 'Novo Post',
        'body': 'Conteúdo do post',
        'userId': '1',
      },
    );

    return jsonDecode(response.body);
  }

  // PUT
  Future<dynamic> updatePost(int id) async {
    final response = await http.put(
      Uri.parse('$url/$id'),
      body: {
        'title': 'Post Atualizado',
        'body': 'Novo conteúdo',
        'userId': '1',
      },
    );

    return jsonDecode(response.body);
  }

  Future<bool> deletePost(int id) async {
    final response = await http.delete(
      Uri.parse('$url/$id'),
    );

    return response.statusCode == 200;
  }
}
