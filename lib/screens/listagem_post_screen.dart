import 'package:flutter/material.dart';
import 'package:project/services/post_service.dart';
import 'package:project/models/post.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project/widgets/audio_widget.dart';

class ListagemPostsScreen extends StatefulWidget {
  @override
  _ListagemPostsScreenState createState() => _ListagemPostsScreenState();
}

class _ListagemPostsScreenState extends State<ListagemPostsScreen> {
  List<Post> posts = [];
  int? loggedUserId;
  final PostService postService = PostService();

  @override
  void initState() {
    super.initState();
    carregarUsuario();
    fetchPosts();
  }

  Future<void> carregarUsuario() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      loggedUserId = prefs.getInt('usuarioId');
    });
  }

  Future<void> fetchPosts() async {
    try {
      final resultado = await postService.listarPosts();
      setState(() {
        posts = resultado;
      });
    } catch (e) {
      print('Erro ao buscar posts: $e');
    }
  }

  Future<void> deletePost(int postId) async {
    final confirm = await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Confirmar"),
        content: Text("Tem certeza que deseja deletar este post?"),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: Text("Cancelar")),
          TextButton(onPressed: () => Navigator.pop(context, true), child: Text("Deletar")),
        ],
      ),
    );

    if (confirm == true) {
      try {
        await postService.deletarPost(postId);
        setState(() {
          posts.removeWhere((p) => p.id == postId);
        });
      } catch (e) {
        print('Erro ao deletar: $e');
      }
    }
  }

  void logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushReplacementNamed(context, '/login');
  }

  void navigateToCreatePost() {
    Navigator.pushNamed(context, '/posts');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: logout,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text('Posts', style: Theme.of(context).textTheme.titleLarge),
                Spacer(),
                ElevatedButton(
                  onPressed: navigateToCreatePost,
                  child: Text('Criar Post'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (_, index) {
                  final post = posts[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(post.titulo, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text(post.post),
                          SizedBox(height: 8),
                          Text('Autor: ${post.usuario?.nome ?? 'Desconhecido'}',
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          if (post.usuario?.id == loggedUserId)
                            TextButton(
                              onPressed: () => deletePost(post.id),
                              child: Text('Deletar', style: TextStyle(color: Colors.red)),
                            ),
                          if (post.audioUrl != null)
                            AudioWidget(url: post.audioUrl!),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
