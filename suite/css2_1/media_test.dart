// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'media-dependency-002.xht' :                  // Emitter spacing.
    '@import url("support/media-dependency-green.css") screen;',
  'media-dependency-004.xht' :                  // Emitter spacing.
    '@import url("support/media-dependency-green.css") ScReEn;',
  'media-dependency-005.xht' :                  // Emitter spacing.
    '@import url("support/media-dependency-green.css") foo, bar, screen;',
  'media-dependency-008.xht' :                  // Emitter spacing.
    '@import url("support/media-dependency-red.css") print;',
  'media-dependency-017.xht' :                  // Emitter spacing.
    '@media screen, print { div { color: green; } }',
};

main() {
  var suite = new Suite('css2_1/src/media');
  suite.processTests(_ExeceptionMatches);
}