import 'package:flutter/material.dart';
import '../services/post_service.dart';

class CadastroPostScreen extends StatefulWidget {
  const CadastroPostScreen({super.key});

  @override
  _CadastroPostScreenState createState() => _CadastroPostScreenState();
}

class _CadastroPostScreenState extends State<CadastroPostScreen> {
  final _formKey = GlobalKey<FormState>();
  final PostService _postService = PostService();
  String _titulo = '';
  String _conteudo = '';
  String? _toastMessage;
  bool _isSuccess = true;
  bool _isLoading = false;

  Future<void> _submitPost() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();

    setState(() => _isLoading = true);

    try {
      await _postService.criarPost(_titulo, _conteudo);
      setState(() {
        _toastMessage = 'Post criado com sucesso!';
        _isSuccess = true;
        _formKey.currentState!.reset();
      });
    } catch (e) {
      setState(() {
        _toastMessage = 'Erro ao criar post';
        _isSuccess = false;
      });
    } finally {
      setState(() => _isLoading = false);
      Future.delayed(const Duration(seconds: 3), () {
        setState(() => _toastMessage = null);
      });
    }
  }

  Future<void> _corrigirOrtografia() async {
    setState(() => _isLoading = true);

    try {
      final textoCorrigido = await _postService.corrigirOrtografia(_conteudo);
      setState(() {
        _conteudo = textoCorrigido;
        _toastMessage = 'Ortografia corrigida com sucesso!';
        _isSuccess = true;
      });
    } catch (e) {
      setState(() {
        _toastMessage = 'Erro ao corrigir ortografia';
        _isSuccess = false;
      });
    } finally {
      setState(() => _isLoading = false);
      Future.delayed(const Duration(seconds: 3), () {
        setState(() => _toastMessage = null);
      });
    }
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
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            if (_isLoading) const LinearProgressIndicator(),
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
                    initialValue: _conteudo,
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
                    onChanged: (value) => _conteudo = value,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: _isLoading ? null : _corrigirOrtografia,
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                        child: const Text('Corrigir Ortografia'),
                      ),
                      ElevatedButton(
                        onPressed: _isLoading ? null : _submitPost,
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
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
                Navigator.pushNamed(context, '/listaposts');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
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
