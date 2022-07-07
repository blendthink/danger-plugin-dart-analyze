# Danger Plugin: Dart Analyze

[![Pub version](https://img.shields.io/pub/v/danger_plugin_dart_analyze.svg)](https://pub.dev/packages/danger_plugin_dart_analyze)

This plugin will parse the analyze results, and notify.

## Usage

First, you need to prepare test result in json format.
You may either:

```shell
dart analyze > your_analyze_results.log
flutter analyze > your_analyze_results.log
```

Adding this plugin to `pubspec.yaml`

```yaml
dev_dependencies:
  danger_core:
  danger_plugin_dart_analyze:
```

In `dangerfile.dart`, you need to import this, and call `DangerPluginDartAnalyze.processFile` with analyze result file.

```dart
import 'dart:io';

import 'package:danger_core/danger_core.dart';
import 'package:danger_plugin_dart_analyze/danger_plugin_dart_analyze.dart';

void main() {
  final analyzeResultFile = File('your_analyze_results.log');
  DangerPluginDartAnalyze.processFile(analyzeResultFile);
}
```