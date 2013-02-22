// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_options;

import 'package:args/args.dart';

/** Command options. */
SuiteOptions options;

class SuiteOptions {
  /** Directory where all sources are found. */
  final String dir;

  /** Display verbose information. */
  final bool verbose;

  /** Display invalid tests being skipped. */
  final bool displayInvalidTests;

  /** Display tests to be skipped; all skipped tests are temporary. */
  final bool displaySkippedTests;

  /** File to process by the compiler. */
  final String name;

  // We could make this faster, if it ever matters.
  factory SuiteOptions() => parse(['']);

  SuiteOptions.fromArgs(ArgResults args) :
      verbose = args['verbose'],
      displayInvalidTests = args['invalid'],
      displaySkippedTests = args['skipped'],
      dir = args['dir'] == null || args['dir'] == '' ? "suite" : args['dir'],
      name = args.rest.length > 0 ? args.rest[0] : "";

  // run_all.dart [options...] [test_name]
  static SuiteOptions parse(List<String> arguments) {
    var parser = new ArgParser()
      ..addFlag('verbose', abbr: 'v', defaultsTo: false, negatable: false,
          help: 'Display detailed suite process information')
      ..addFlag('invalid', defaultsTo: false, negatable: false,
          help: 'Display list of invalid tests')
      ..addFlag('skipped', defaultsTo: false, negatable: false,
          help: 'Display list of skipped tests')
      ..addOption('dir', help: 'Directory relative location to find all tests '
          'files (defaults to the test/suite directory)')
      ..addFlag('help', abbr: 'h', defaultsTo: false, negatable: false,
          help: 'Displays this help message');

    try {
      var results = parser.parse(arguments);
      if (results['help']) {
        showUsage(parser);
        return null;
      }
      return new SuiteOptions.fromArgs(results);
    } on FormatException catch (e) {
      print(e.message);
      showUsage(parser);
      return null;
    }
  }

  static showUsage(parser) {
    print('Usage: run_all [options...] [test_name]\n');
    print('Omitted test_name runs all tests\n');
    print(parser.getUsage());
  }
}
