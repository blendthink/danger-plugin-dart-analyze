import 'package:danger_plugin_dart_analyze/src/models/dart_analyze_result.dart';

class DartAnalyzeResultParser {
  const DartAnalyzeResultParser();

  static final _regex =
      RegExp(r' *(info|warning|error) • (.+) • (.+):(\d+):\d+ • (.+)');

  DartAnalyzeResult? parse(String logLine) {
    final match = _regex.firstMatch(logLine);
    if (match == null) return null;

    final severity = Severity.values.byName(match.group(1)!);
    final message = match.group(2)!;
    final filePath = match.group(3)!;
    final line = int.parse(match.group(4)!);
    final code = match.group(5)!;

    return DartAnalyzeResult(
      severity: severity,
      message: message,
      filePath: filePath,
      line: line,
      code: code,
    );
  }
}
