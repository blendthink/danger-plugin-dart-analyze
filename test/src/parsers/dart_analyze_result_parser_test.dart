import 'package:danger_plugin_dart_analyze/src/models/dart_analyze_result.dart';
import 'package:danger_plugin_dart_analyze/src/parsers/dart_analyze_result_parser.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

void main() {
  final parser = DartAnalyzeResultParser(current);
  group('diagnostic', () {
    test('info', () {
      final expected = DartAnalyzeResult(
        severity: Severity.info,
        message: 'Put required named parameters first',
        filePath: 'lib/main.dart',
        line: 33,
        code: 'always_put_required_named_parameters_first',
      );
      final actual = parser.parse(
        '   info • Put required named parameters first • lib/main.dart:33:45 • always_put_required_named_parameters_first',
      );
      expect(actual, expected);
    });
    test('warning', () {
      final expected = DartAnalyzeResult(
        severity: Severity.warning,
        message: "'demo' isn't a recognized error code",
        filePath: 'analysis_options.yaml',
        line: 5,
        code: 'unrecognized_error_code',
      );
      final actual = parser.parse(
        "warning • 'demo' isn't a recognized error code • analysis_options.yaml:5:5 • unrecognized_error_code",
      );
      expect(actual, expected);
    });
    test('error', () {
      final expected = DartAnalyzeResult(
        severity: Severity.error,
        message:
            "The argument type 'Null' can't be assigned to the parameter type 'String'",
        filePath: 'lib/main.dart',
        line: 14,
        code: 'argument_type_not_assignable',
      );
      final actual = parser.parse(
        "  error • The argument type 'Null' can't be assigned to the parameter type 'String' • lib/main.dart:14:14 • argument_type_not_assignable",
      );
      expect(actual, expected);
    });
  });

  group('not diagnostic', () {
    test('title', () {
      final actual =
          parser.parse('Analyzing danger-plugin-dart-analyze... 1.4s');
      expect(actual, null);
    });

    test('empty', () {
      final actual = parser.parse('');
      expect(actual, null);
    });

    test('no issues found', () {
      final actual = parser.parse('No issues found!');
      expect(actual, null);
    });
  });
}
