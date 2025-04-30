//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegraDeNegocioException {
  /// Returns a new [RegraDeNegocioException] instance.
  RegraDeNegocioException({
    this.cause,
    this.stackTrace = const [],
    this.message,
    this.suppressed = const [],
    this.localizedMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RegraDeNegocioExceptionCause? cause;

  List<RegraDeNegocioExceptionCauseStackTraceInner> stackTrace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  List<RegraDeNegocioExceptionCauseSuppressedInner> suppressed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localizedMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegraDeNegocioException &&
    other.cause == cause &&
    _deepEquality.equals(other.stackTrace, stackTrace) &&
    other.message == message &&
    _deepEquality.equals(other.suppressed, suppressed) &&
    other.localizedMessage == localizedMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cause == null ? 0 : cause!.hashCode) +
    (stackTrace.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (suppressed.hashCode) +
    (localizedMessage == null ? 0 : localizedMessage!.hashCode);

  @override
  String toString() => 'RegraDeNegocioException[cause=$cause, stackTrace=$stackTrace, message=$message, suppressed=$suppressed, localizedMessage=$localizedMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cause != null) {
      json[r'cause'] = this.cause;
    } else {
      json[r'cause'] = null;
    }
      json[r'stackTrace'] = this.stackTrace;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'suppressed'] = this.suppressed;
    if (this.localizedMessage != null) {
      json[r'localizedMessage'] = this.localizedMessage;
    } else {
      json[r'localizedMessage'] = null;
    }
    return json;
  }

  /// Returns a new [RegraDeNegocioException] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegraDeNegocioException? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegraDeNegocioException[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegraDeNegocioException[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegraDeNegocioException(
        cause: RegraDeNegocioExceptionCause.fromJson(json[r'cause']),
        stackTrace: RegraDeNegocioExceptionCauseStackTraceInner.listFromJson(json[r'stackTrace']),
        message: mapValueOfType<String>(json, r'message'),
        suppressed: RegraDeNegocioExceptionCauseSuppressedInner.listFromJson(json[r'suppressed']),
        localizedMessage: mapValueOfType<String>(json, r'localizedMessage'),
      );
    }
    return null;
  }

  static List<RegraDeNegocioException> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegraDeNegocioException>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegraDeNegocioException.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegraDeNegocioException> mapFromJson(dynamic json) {
    final map = <String, RegraDeNegocioException>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegraDeNegocioException.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegraDeNegocioException-objects as value to a dart map
  static Map<String, List<RegraDeNegocioException>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegraDeNegocioException>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegraDeNegocioException.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

