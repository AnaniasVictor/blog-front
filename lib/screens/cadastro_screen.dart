import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import '../services/auth_service.dart'; // Serviço de cadastro
import '../widgets/toast_widget.dart'; // Widget para mostrar mensagens de erro ou sucesso

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _formKey = GlobalKey<FormState>();
  String _nome = '';
  String _email = '';
  String _senha = '';
  String _descricao = '';
  String? _toastMessage;
  bool _isSuccess = true;

  void _cadastrarUsuario() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    final response = await AuthService.cadastrar(_nome, _email, _senha, _descricao);

    if (response != null) {
      Routefly.push('/login'); // Redireciona para o login após cadastro
    } else {
      setState(() {
        _toastMessage = 'Erro ao cadastrar usuário';
        _isSuccess = false;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() => _toastMessage = null);
      });
    }
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
                    const Text(
                      'Cadastre-se no BLOG',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Nome'),
                      validator: (value) =>
                      value != null && value.isNotEmpty ? null : 'Nome é obrigatório',
                      onSaved: (value) => _nome = value ?? '',
                    ),
                    const SizedBox(height: 12),
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
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Descrição'),
                      maxLines: 3,
                      onSaved: (value) => _descricao = value ?? '',
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _cadastrarUsuario,
                      child: const Text('Cadastrar'),
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
