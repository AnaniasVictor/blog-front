//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Comment {
  /// Returns a new [Comment] instance.
  Comment({
    this.id,
    this.comentario,
    this.data,
    this.tempo,
    this.post,
    this.usuario,
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
  String? comentario;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Post? post;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Usuario? usuario;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Comment &&
    other.id == id &&
    other.comentario == comentario &&
    other.data == data &&
    other.tempo == tempo &&
    other.post == post &&
    other.usuario == usuario;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (comentario == null ? 0 : comentario!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (tempo == null ? 0 : tempo!.hashCode) +
    (post == null ? 0 : post!.hashCode) +
    (usuario == null ? 0 : usuario!.hashCode);

  @override
  String toString() => 'Comment[id=$id, comentario=$comentario, data=$data, tempo=$tempo, post=$post, usuario=$usuario]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.comentario != null) {
      json[r'comentario'] = this.comentario;
    } else {
      json[r'comentario'] = null;
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
    if (this.post != null) {
      json[r'post'] = this.post;
    } else {
      json[r'post'] = null;
    }
    if (this.usuario != null) {
      json[r'usuario'] = this.usuario;
    } else {
      json[r'usuario'] = null;
    }
    return json;
  }

  /// Returns a new [Comment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Comment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Comment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Comment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Comment(
        id: mapValueOfType<int>(json, r'id'),
        comentario: mapValueOfType<String>(json, r'comentario'),
        data: mapDateTime(json, r'data', r''),
        tempo: mapDateTime(json, r'tempo', r''),
        post: Post.fromJson(json[r'post']),
        usuario: Usuario.fromJson(json[r'usuario']),
      );
    }
    return null;
  }

  static List<Comment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Comment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Comment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Comment> mapFromJson(dynamic json) {
    final map = <String, Comment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Comment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Comment-objects as value to a dart map
  static Map<String, List<Comment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Comment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Comment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

