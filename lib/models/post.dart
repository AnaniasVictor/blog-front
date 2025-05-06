class Post {
  final int id;
  final String titulo;
  final String post;
  final String? audioUrl;
  final Usuario? usuario;

  Post({
    required this.id,
    required this.titulo,
    required this.post,
    this.audioUrl,
    this.usuario,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      titulo: json['titulo'],
      post: json['post'],
      audioUrl: json['audioUrl'],
      usuario: json['usuario'] != null ? Usuario.fromJson(json['usuario']) : null,
    );
  }
}

class Usuario {
  final int id;
  final String nome;

  Usuario({required this.id, required this.nome});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nome: json['nome'],
    );
  }
}
