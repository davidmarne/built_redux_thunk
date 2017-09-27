import 'dart:async';

import 'package:build_runner/build_runner.dart';
import 'package:built_value_generator/built_value_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:built_redux/generator.dart';

/// Build the generated files in the test directory.
Future main(List<String> args) async {
  await build([
    new BuildAction(
        new PartBuilder([
          new BuiltValueGenerator(),
          new BuiltReduxGenerator(),
        ]),
        'built_redux_thunk',
        inputs: const ['test/unit/test_counter.dart'])
  ], deleteFilesByDefault: true);
}
