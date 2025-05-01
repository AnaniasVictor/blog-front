import 'package:project/screens/cadastro_post_screen.dart';
import 'package:routefly/routefly.dart';
import 'screens/login_screen.dart';
import 'screens/cadastro_screen.dart';
// import 'screens/cadastro_posts_screen.dart';


final routes = {
  '/login': (context) => const LoginScreen(),
  '/cadastro': (context) => const CadastroScreen(),
  '/posts': (context) => const CadastroPostScreen(),
};


final routefly = Routefly(routes: routes); // ou outro sistema de rotas conforme necessário
