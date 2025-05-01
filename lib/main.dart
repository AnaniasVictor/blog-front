import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'screens/login_screen.dart';
import 'screens/cadastro_screen.dart';
import 'screens/cadastro_post_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/cadastro': (context) => const CadastroScreen(),
        '/posts': (context) => const CadastroPostScreen(),
      },
      initialRoute: '/login',
    );
  }
}
