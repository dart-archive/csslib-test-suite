// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'position-fixed-003.xht' :                    // Emitter spacing.
    '#filler { height: 6000px; margin: 10px; } '
    '@media handheld, projection, screen, tty, tv { '
    '#div1 { background: blue; height: 1.5em; position: fixed; top: 3em; } }',
};

main() {
  var suite = new Suite('css2_1/src/positioning');
  suite.processTests(_ExeceptionMatches);
}