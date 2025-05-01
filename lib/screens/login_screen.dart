import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../widgets/toast_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _senha = '';
  String? _toastMessage;
  bool _isSuccess = true;

  // Função de login
  void _login() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    final response = await AuthService.login(_email, _senha);

    if (response != null) {
      // Navega para a tela de cadastro de posts usando o Navigator.pushNamed
      Navigator.pushNamed(context, '/posts');  // Corrigido para a navegação com o nome da rota
    } else {
      setState(() {
        _toastMessage = 'Usuário ou senha inválidos';
        _isSuccess = false;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() => _toastMessage = null);
      });
    }
  }

  // Função de navegação para a tela de cadastro
  void _navegarParaCadastro() {
    Navigator.pushNamed(context, '/cadastro');  // Roteia para a tela de cadastro
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Bem-vindo - BLOG', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'E-mail'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) =>
                      value != null && value.contains('@') ? null : 'Email inválido',
                      onSaved: (value) => _email = value ?? '',
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Senha'),
                      obscureText: true,
                      validator: (value) =>
                      value != null && value.length >= 3 ? null : 'Senha inválida',
                      onSaved: (value) => _senha = value ?? '',
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login,
                      child: const Text('Entrar'),
                    ),
                    const SizedBox(height: 12),
                    // Botão para redirecionar para a tela de cadastro
                    TextButton(
                      onPressed: _navegarParaCadastro,
                      child: const Text('Não tem uma conta? Cadastre-se', style: TextStyle(fontSize: 16)),
                    ),
                    if (_toastMessage != null)
                      ToastWidget(message: _toastMessage!, isSuccess: _isSuccess),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
