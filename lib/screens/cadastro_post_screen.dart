import 'package:flutter/material.dart';

class CadastroPostScreen extends StatefulWidget {
  const CadastroPostScreen({super.key});

  @override
  _CadastroPostScreenState createState() => _CadastroPostScreenState();
}

class _CadastroPostScreenState extends State<CadastroPostScreen> {
  final _formKey = GlobalKey<FormState>();
  String _titulo = '';
  String _conteudo = '';
  String? _toastMessage;
  bool _isSuccess = true;

  void _submitPost() {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    // Simulação de postagem com sucesso
    // Aqui você pode fazer a chamada à API para criar o post
    setState(() {
      _toastMessage = 'Post criado com sucesso!';
      _isSuccess = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() => _toastMessage = null);
    });

    // Após a criação do post, você pode limpar o formulário
    _formKey.currentState!.reset();
  }

  void _corrigirOrtografia() {
    // Simulando correção ortográfica
    setState(() {
      _conteudo = _conteudo.replaceAll('errro', 'erro'); // Exemplo simples
      _toastMessage = 'Ortografia corrigida com sucesso!';
      _isSuccess = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() => _toastMessage = null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Novo Post'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Aqui você pode limpar o armazenamento local ou fazer logout
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Título',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira o título do post';
                      }
                      return null;
                    },
                    onSaved: (value) => _titulo = value ?? '',
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Conteúdo',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 10,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira o conteúdo do post';
                      }
                      return null;
                    },
                    onSaved: (value) => _conteudo = value ?? '',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _corrigirOrtografia,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber, // Usando backgroundColor ao invés de primary
                        ),
                        child: const Text('Corrigir Ortografia'),
                      ),
                      ElevatedButton(
                        onPressed: _submitPost,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Usando backgroundColor ao invés de primary
                        ),
                        child: const Text('Salvar Post'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/posts');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Usando backgroundColor ao invés de primary
              ),
              child: const Text('Ver Posts'),
            ),
            if (_toastMessage != null)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  _toastMessage!,
                  style: TextStyle(
                    color: _isSuccess ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
