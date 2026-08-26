import 'dart:convert';
import 'dart:io';

/// Loads bundled `.txt` template files shipped with mantle_gen.
abstract final class TemplateLoader {
  static String? _templatesDir;

  /// Reads [fileName] from [lib/src/template/templates/].
  static String load(String fileName) {
    _templatesDir ??= _resolveTemplatesDir();
    final file = File('$_templatesDir/$fileName');
    if (!file.existsSync()) {
      throw StateError('Template file not found: ${file.path}');
    }
    return file.readAsStringSync();
  }

  static String _resolveTemplatesDir() {
    var directory = Directory.current;
    while (true) {
      final configFile = File(
        '${directory.path}/.dart_tool/package_config.json',
      );
      if (configFile.existsSync()) {
        final config =
            jsonDecode(configFile.readAsStringSync()) as Map<String, dynamic>;
        for (final package in config['packages'] as List<dynamic>) {
          final entry = package as Map<String, dynamic>;
          if (entry['name'] == 'mantle_gen') {
            final rootUri = entry['rootUri'] as String;
            final packageRoot = configFile.parent.uri
                .resolve(rootUri)
                .toFilePath();
            return '$packageRoot/lib/src/template/templates';
          }
        }
      }

      final parent = directory.parent;
      if (parent.path == directory.path) {
        break;
      }
      directory = parent;
    }

    throw StateError(
      'Could not locate mantle_gen templates directory. '
      'Ensure mantle_gen is listed in .dart_tool/package_config.json.',
    );
  }
}
