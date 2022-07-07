// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dart_analyze_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DartAnalyzeResult {
  Severity get severity => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;
  int get line => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DartAnalyzeResultCopyWith<DartAnalyzeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartAnalyzeResultCopyWith<$Res> {
  factory $DartAnalyzeResultCopyWith(
          DartAnalyzeResult value, $Res Function(DartAnalyzeResult) then) =
      _$DartAnalyzeResultCopyWithImpl<$Res>;
  $Res call(
      {Severity severity,
      String message,
      String filePath,
      int line,
      String code});
}

/// @nodoc
class _$DartAnalyzeResultCopyWithImpl<$Res>
    implements $DartAnalyzeResultCopyWith<$Res> {
  _$DartAnalyzeResultCopyWithImpl(this._value, this._then);

  final DartAnalyzeResult _value;
  // ignore: unused_field
  final $Res Function(DartAnalyzeResult) _then;

  @override
  $Res call({
    Object? severity = freezed,
    Object? message = freezed,
    Object? filePath = freezed,
    Object? line = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      severity: severity == freezed
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as Severity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DartAnalyzeResultCopyWith<$Res>
    implements $DartAnalyzeResultCopyWith<$Res> {
  factory _$$_DartAnalyzeResultCopyWith(_$_DartAnalyzeResult value,
          $Res Function(_$_DartAnalyzeResult) then) =
      __$$_DartAnalyzeResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Severity severity,
      String message,
      String filePath,
      int line,
      String code});
}

/// @nodoc
class __$$_DartAnalyzeResultCopyWithImpl<$Res>
    extends _$DartAnalyzeResultCopyWithImpl<$Res>
    implements _$$_DartAnalyzeResultCopyWith<$Res> {
  __$$_DartAnalyzeResultCopyWithImpl(
      _$_DartAnalyzeResult _value, $Res Function(_$_DartAnalyzeResult) _then)
      : super(_value, (v) => _then(v as _$_DartAnalyzeResult));

  @override
  _$_DartAnalyzeResult get _value => super._value as _$_DartAnalyzeResult;

  @override
  $Res call({
    Object? severity = freezed,
    Object? message = freezed,
    Object? filePath = freezed,
    Object? line = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_DartAnalyzeResult(
      severity: severity == freezed
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as Severity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DartAnalyzeResult implements _DartAnalyzeResult {
  const _$_DartAnalyzeResult(
      {required this.severity,
      required this.message,
      required this.filePath,
      required this.line,
      required this.code});

  @override
  final Severity severity;
  @override
  final String message;
  @override
  final String filePath;
  @override
  final int line;
  @override
  final String code;

  @override
  String toString() {
    return 'DartAnalyzeResult(severity: $severity, message: $message, filePath: $filePath, line: $line, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DartAnalyzeResult &&
            const DeepCollectionEquality().equals(other.severity, severity) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(other.line, line) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(severity),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(line),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_DartAnalyzeResultCopyWith<_$_DartAnalyzeResult> get copyWith =>
      __$$_DartAnalyzeResultCopyWithImpl<_$_DartAnalyzeResult>(
          this, _$identity);
}

abstract class _DartAnalyzeResult implements DartAnalyzeResult {
  const factory _DartAnalyzeResult(
      {required final Severity severity,
      required final String message,
      required final String filePath,
      required final int line,
      required final String code}) = _$_DartAnalyzeResult;

  @override
  Severity get severity;
  @override
  String get message;
  @override
  String get filePath;
  @override
  int get line;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_DartAnalyzeResultCopyWith<_$_DartAnalyzeResult> get copyWith =>
      throw _privateConstructorUsedError;
}
