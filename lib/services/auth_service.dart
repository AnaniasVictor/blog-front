import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const String baseUrl = 'http://localhost:8080/api/usuario';


  static Future<Map<String, dynamic>?> login(String email, String senha) async {
    final response = await http.post(
      Uri.parse("http://localhost:8080/api/usuario/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "senha": senha}),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> userData = json.decode(response.body);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('usuarioId', userData['id']);
      return userData;
    } else {
      return null;
    }
  }


  static Future<bool> cadastrar(String nome, String email, String senha, String descricao) async {
    final url = Uri.parse('$baseUrl/cadastro');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'nome': nome,
        'email': email,
        'senha': senha,
        'descricao': descricao,
      }),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
