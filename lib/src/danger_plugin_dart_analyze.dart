import 'dart:io';

import 'package:danger_core/danger_core.dart';
import 'package:danger_plugin_dart_analyze/src/models/dart_analyze_result.dart';
import 'package:danger_plugin_dart_analyze/src/parsers/dart_analyze_result_parser.dart';
import 'package:danger_plugin_dart_analyze/src/repositories/git_repository.dart';

import 'package:path/path.dart' as p;

class DangerPluginDartAnalyze {
  static Future<void> processFile(
    File file, {
    String? workingDirectoryPath,
  }) async {
    if (!danger.isGitHub) {
      fail('dart_plugin_dart_analyze is supported by GitHub only.');
      return;
    }

    if (!file.existsSync()) {
      fail('Analyze report not found, path [${file.path}]');
      return;
    }

    final workingPath = workingDirectoryPath ?? p.current;

    final lines = file.readAsLinesSync();

    final parser = DartAnalyzeResultParser(workingPath);
    final results = lines.map(parser.parse).whereType<DartAnalyzeResult>();
    if (results.isEmpty) return;

    final baseRef = 'origin/${danger.github.pr.base.ref}';
    final headRef = 'origin/${danger.github.pr.head.ref}';
    final gitRepository = GitRepository(base: baseRef, head: headRef);

    final filteredResults = results.where(
      (e) => gitRepository.isTarget(
        path: e.filePath,
        line: e.line,
      ),
    );

    void sendMessage(DartAnalyzeResult result) {
      final msg = result.message;
      final file = result.filePath;
      final line = result.line;

      switch (result.severity) {
        case Severity.info:
          message(msg, file: file, line: line);
          break;
        case Severity.warning:
          warn(msg, file: file, line: line);
          break;
        case Severity.error:
          fail(msg, file: file, line: line);
          break;
      }
    }

    filteredResults.forEach(sendMessage);
  }
}
