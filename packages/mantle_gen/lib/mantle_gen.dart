import 'package:build/build.dart';
import 'package:mantle_gen/src/generator/component_generator.dart';
import 'package:mantle_gen/src/generator/token_generator.dart';
import 'package:source_gen/source_gen.dart';

/// Creates the Mantle token [SharedPartBuilder] referenced from `build.yaml`.
Builder mantleTokenBuilder(BuilderOptions options) {
  return SharedPartBuilder([MantleTokenGenerator()], 'MantleToken');
}

/// Creates the Mantle token [SharedPartBuilder] referenced from `build.yaml`.
Builder mantleComponentBuilder(BuilderOptions options) {
  return SharedPartBuilder([MantleComponentGenerator()], 'MantleComponent');
}
