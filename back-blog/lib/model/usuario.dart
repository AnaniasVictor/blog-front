//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Usuario {
  /// Returns a new [Usuario] instance.
  Usuario({
    this.id,
    this.nome,
    this.email,
    this.senha,
    this.papel,
    this.descricao,
    this.posts = const [],
    this.comentarios = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? senha;

  UsuarioPapelEnum? papel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descricao;

  List<Post> posts;

  List<Comment> comentarios;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Usuario &&
    other.id == id &&
    other.nome == nome &&
    other.email == email &&
    other.senha == senha &&
    other.papel == papel &&
    other.descricao == descricao &&
    _deepEquality.equals(other.posts, posts) &&
    _deepEquality.equals(other.comentarios, comentarios);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (senha == null ? 0 : senha!.hashCode) +
    (papel == null ? 0 : papel!.hashCode) +
    (descricao == null ? 0 : descricao!.hashCode) +
    (posts.hashCode) +
    (comentarios.hashCode);

  @override
  String toString() => 'Usuario[id=$id, nome=$nome, email=$email, senha=$senha, papel=$papel, descricao=$descricao, posts=$posts, comentarios=$comentarios]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.senha != null) {
      json[r'senha'] = this.senha;
    } else {
      json[r'senha'] = null;
    }
    if (this.papel != null) {
      json[r'papel'] = this.papel;
    } else {
      json[r'papel'] = null;
    }
    if (this.descricao != null) {
      json[r'descricao'] = this.descricao;
    } else {
      json[r'descricao'] = null;
    }
      json[r'posts'] = this.posts;
      json[r'comentarios'] = this.comentarios;
    return json;
  }

  /// Returns a new [Usuario] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Usuario? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Usuario[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Usuario[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Usuario(
        id: mapValueOfType<int>(json, r'id'),
        nome: mapValueOfType<String>(json, r'nome'),
        email: mapValueOfType<String>(json, r'email'),
        senha: mapValueOfType<String>(json, r'senha'),
        papel: UsuarioPapelEnum.fromJson(json[r'papel']),
        descricao: mapValueOfType<String>(json, r'descricao'),
        posts: Post.listFromJson(json[r'posts']),
        comentarios: Comment.listFromJson(json[r'comentarios']),
      );
    }
    return null;
  }

  static List<Usuario> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Usuario>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Usuario.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Usuario> mapFromJson(dynamic json) {
    final map = <String, Usuario>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Usuario.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Usuario-objects as value to a dart map
  static Map<String, List<Usuario>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Usuario>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Usuario.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UsuarioPapelEnum {
  /// Instantiate a new enum with the provided [value].
  const UsuarioPapelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ADMIN = UsuarioPapelEnum._(r'ADMIN');
  static const USER = UsuarioPapelEnum._(r'USER');

  /// List of all possible values in this [enum][UsuarioPapelEnum].
  static const values = <UsuarioPapelEnum>[
    ADMIN,
    USER,
  ];

  static UsuarioPapelEnum? fromJson(dynamic value) => UsuarioPapelEnumTypeTransformer().decode(value);

  static List<UsuarioPapelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsuarioPapelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsuarioPapelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UsuarioPapelEnum] to String,
/// and [decode] dynamic data back to [UsuarioPapelEnum].
class UsuarioPapelEnumTypeTransformer {
  factory UsuarioPapelEnumTypeTransformer() => _instance ??= const UsuarioPapelEnumTypeTransformer._();

  const UsuarioPapelEnumTypeTransformer._();

  String encode(UsuarioPapelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UsuarioPapelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UsuarioPapelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ADMIN': return UsuarioPapelEnum.ADMIN;
        case r'USER': return UsuarioPapelEnum.USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UsuarioPapelEnumTypeTransformer] instance.
  static UsuarioPapelEnumTypeTransformer? _instance;
}


