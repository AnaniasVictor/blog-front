//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegraDeNegocioExceptionCauseSuppressedInner {
  /// Returns a new [RegraDeNegocioExceptionCauseSuppressedInner] instance.
  RegraDeNegocioExceptionCauseSuppressedInner({
    this.stackTrace = const [],
    this.message,
    this.localizedMessage,
  });

  List<RegraDeNegocioExceptionCauseStackTraceInner> stackTrace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localizedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegraDeNegocioExceptionCauseSuppressedInner &&
    _deepEquality.equals(other.stackTrace, stackTrace) &&
    other.message == message &&
    other.localizedMessage == localizedMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stackTrace.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (localizedMessage == null ? 0 : localizedMessage!.hashCode);

  @override
  String toString() => 'RegraDeNegocioExceptionCauseSuppressedInner[stackTrace=$stackTrace, message=$message, localizedMessage=$localizedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'stackTrace'] = this.stackTrace;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.localizedMessage != null) {
      json[r'localizedMessage'] = this.localizedMessage;
    } else {
      json[r'localizedMessage'] = null;
    }
    return json;
  }

  /// Returns a new [RegraDeNegocioExceptionCauseSuppressedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegraDeNegocioExceptionCauseSuppressedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegraDeNegocioExceptionCauseSuppressedInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegraDeNegocioExceptionCauseSuppressedInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegraDeNegocioExceptionCauseSuppressedInner(
        stackTrace: RegraDeNegocioExceptionCauseStackTraceInner.listFromJson(json[r'stackTrace']),
        message: mapValueOfType<String>(json, r'message'),
        localizedMessage: mapValueOfType<String>(json, r'localizedMessage'),
      );
    }
    return null;
  }

  static List<RegraDeNegocioExceptionCauseSuppressedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegraDeNegocioExceptionCauseSuppressedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegraDeNegocioExceptionCauseSuppressedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegraDeNegocioExceptionCauseSuppressedInner> mapFromJson(dynamic json) {
    final map = <String, RegraDeNegocioExceptionCauseSuppressedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegraDeNegocioExceptionCauseSuppressedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegraDeNegocioExceptionCauseSuppressedInner-objects as value to a dart map
  static Map<String, List<RegraDeNegocioExceptionCauseSuppressedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegraDeNegocioExceptionCauseSuppressedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegraDeNegocioExceptionCauseSuppressedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

