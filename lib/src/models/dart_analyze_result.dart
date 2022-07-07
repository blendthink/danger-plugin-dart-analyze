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
  ;

  @override
  String toString() => name;
}
