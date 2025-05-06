import 'package:project/screens/cadastro_post_screen.dart';
import 'package:routefly/routefly.dart';
import 'screens/login_screen.dart';
import 'screens/cadastro_screen.dart';
import 'screens/listagem_post_screen.dart';


final routes = {
  '/login': (context) => const LoginScreen(),
  '/cadastro': (context) => const CadastroScreen(),
  '/posts': (context) => const CadastroPostScreen(),
  '/listaposts': (context) => const ListagemPostsScreen(),
};


final routefly = Routefly(routes: routes);
