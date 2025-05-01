import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String baseUrl = 'http://localhost:8080/api/usuario'; // URL do seu backend

  // Função para login
  static Future<AuthResponse?> login(String email, String senha) async {
    final url = Uri.parse('$baseUrl/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'senha': senha}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['token'] != null && data['id'] != null) {
        return AuthResponse(id: data['id'], token: data['token']);
      }
    }
    return null;
  }

  // Função para cadastro de usuário
  static Future<bool> cadastrar(String nome, String email, String senha, String descricao) async {
    final url = Uri.parse('$baseUrl/cadastro'); // Endpoint para cadastro no backend
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

    // Verifica se o cadastro foi bem-sucedido
    if (response.statusCode == 201) {
      return true; // Cadastro bem-sucedido
    } else {
      return false; // Falha no cadastro
    }
  }
}

class AuthResponse {
  final int id;
  final String token;

  AuthResponse({required this.id, required this.token});
}
