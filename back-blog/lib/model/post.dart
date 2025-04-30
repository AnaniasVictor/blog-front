//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Post {
  /// Returns a new [Post] instance.
  Post({
    this.id,
    this.titulo,
    this.post,
    this.data,
    this.tempo,
    this.comentarios = const [],
    this.usuario,
    this.audio = const [],
    this.audioUrl,
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
  String? titulo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? post;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? tempo;

  List<Comment> comentarios;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Usuario? usuario;

  List<String> audio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audioUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Post &&
    other.id == id &&
    other.titulo == titulo &&
    other.post == post &&
    other.data == data &&
    other.tempo == tempo &&
    _deepEquality.equals(other.comentarios, comentarios) &&
    other.usuario == usuario &&
    _deepEquality.equals(other.audio, audio) &&
    other.audioUrl == audioUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode) +
    (post == null ? 0 : post!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (tempo == null ? 0 : tempo!.hashCode) +
    (comentarios.hashCode) +
    (usuario == null ? 0 : usuario!.hashCode) +
    (audio.hashCode) +
    (audioUrl == null ? 0 : audioUrl!.hashCode);

  @override
  String toString() => 'Post[id=$id, titulo=$titulo, post=$post, data=$data, tempo=$tempo, comentarios=$comentarios, usuario=$usuario, audio=$audio, audioUrl=$audioUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    if (this.post != null) {
      json[r'post'] = this.post;
    } else {
      json[r'post'] = null;
    }
    if (this.data != null) {
      json[r'data'] = _dateFormatter.format(this.data!.toUtc());
    } else {
      json[r'data'] = null;
    }
    if (this.tempo != null) {
      json[r'tempo'] = this.tempo!.toUtc().toIso8601String();
    } else {
      json[r'tempo'] = null;
    }
      json[r'comentarios'] = this.comentarios;
    if (this.usuario != null) {
      json[r'usuario'] = this.usuario;
    } else {
      json[r'usuario'] = null;
    }
      json[r'audio'] = this.audio;
    if (this.audioUrl != null) {
      json[r'audioUrl'] = this.audioUrl;
    } else {
      json[r'audioUrl'] = null;
    }
    return json;
  }

  /// Returns a new [Post] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Post? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Post[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Post[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Post(
        id: mapValueOfType<int>(json, r'id'),
        titulo: mapValueOfType<String>(json, r'titulo'),
        post: mapValueOfType<String>(json, r'post'),
        data: mapDateTime(json, r'data', r''),
        tempo: mapDateTime(json, r'tempo', r''),
        comentarios: Comment.listFromJson(json[r'comentarios']),
        usuario: Usuario.fromJson(json[r'usuario']),
        audio: json[r'audio'] is Iterable
            ? (json[r'audio'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        audioUrl: mapValueOfType<String>(json, r'audioUrl'),
      );
    }
    return null;
  }

  static List<Post> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Post>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Post.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Post> mapFromJson(dynamic json) {
    final map = <String, Post>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Post.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Post-objects as value to a dart map
  static Map<String, List<Post>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Post>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Post.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

