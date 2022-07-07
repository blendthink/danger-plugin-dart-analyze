import 'dart:io';

class GitRepository {
  final String _base;
  final String _head;

  const GitRepository({
    required String base,
    required String head,
  })  : _base = base,
        _head = head;

  bool isTarget({
    required String path,
    required int line,
  }) {
    final executable = 'git';
    final args = [
      'log',
      '$_base..$_head',
      '--format=%H',
      '-n',
      '1',
      '-L',
      '$line,+1:$path',
    ];

    // git log {base}..{head} --format=%H -n 1 -L {line},+1:{path}
    //
    // If there is no commit between {base} and {head}: ''
    // If a commit exists between {base} and {head}: e.g. '6d87458a8089ae5d025b087bfb9b0809d2060411'
    final result = Process.runSync(executable, args);

    final stdout = result.stdout as String;
    final stderr = result.stderr as String;

    if (stdout.isNotEmpty) print(stdout.trim());
    if (stderr.isNotEmpty) print(stderr);
    if (result.exitCode != 0) {
      throw ProcessException(executable, args, stderr, result.exitCode);
    }

    final regex = RegExp(r'^([\d|a-z]{40})');
    final match = regex.firstMatch(stdout);
    return match?.group(1)?.isNotEmpty ?? false;
  }
}
