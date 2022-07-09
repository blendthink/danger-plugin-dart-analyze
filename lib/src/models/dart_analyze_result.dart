import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_analyze_result.freezed.dart';

@freezed
abstract class DartAnalyzeResult with _$DartAnalyzeResult {
  const factory DartAnalyzeResult({
    required Severity severity,
    required String message,
    required String filePath,
    required int line,
    required String code,
  }) = _DartAnalyzeResult;
}

enum Severity {
  info,
  warning,
  error,
}

extension EnumValueOf<T extends Enum> on Iterable<T> {
  T valueOf(String name) {
    for (final value in this) {
      if (value.name == name) return value;
    }
    throw ArgumentError.value(name, "name", "No enum value with that name");
  }
}
