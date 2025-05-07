import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class PostService {
  final String _baseUrl = "http://localhost:8080/api/post";

  Future<List<Post>> listarPosts() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(utf8.decode(response.bodyBytes));
      return jsonList.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception("Erro ao carregar posts");
    }
  }

  Future<void> deletarPost(int id) async {
    final response = await http.delete(Uri.parse("$_baseUrl/$id"));

    if (response.statusCode != 200) {
      throw Exception("Erro ao deletar post");
    }
  }

  Future<void> criarPost(String titulo, String conteudo) async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getInt('usuarioId');

    if (userId == null) {
      throw Exception("Usuário não logado");
    }

    final Map<String, dynamic> postData = {
      "titulo": titulo,
      "post": conteudo,
      "usuario": {"id": userId},
    };

    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(postData),
    );

    if (response.statusCode != 200) {
      throw Exception("Erro ao criar post");
    }
  }

  Future<void> corrigirOrtografia(String texto, TextEditingController controller) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/ortografia"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(texto),
    );

    if (response.statusCode == 200) {
      controller.text = response.body;
    } else {
      throw Exception("Erro ao corrigir ortografia");
    }
  }
}
