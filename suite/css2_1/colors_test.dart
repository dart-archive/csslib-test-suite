// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library colors_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'color-001.xht' : replaceColors,
  'color-002.xht' : completeFixup,
  'color-004.xht' : replaceColors,
  'color-005-ref.xht' :                     // Color mapping and spacing
    'body { background-color: black; } '
    'p { color: white; } '
    'img { height: 1in; vertical-align: top; width: 1in; }',
  'color-006-ref.xht' :                     // Color mapping and spacing
    'body { background-color: black; } '
    'p { color: white; } '
    'img { height: 1in; vertical-align: top; width: 1in; }',
  'color-006.xht' : completeFixup,
  'color-010.xht' : replaceColors,
  'color-012.xht' : completeFixup,
  'color-015.xht' : replaceColors,
  'color-017.xht' : completeFixup,
  'color-020.xht' : replaceColors,
  'color-022.xht' : completeFixup,
  'color-024.xht' : completeFixup,
  'color-025.xht' : completeFixup,
  'colors-007.xht' : SKIP_TEST,             // TODO(terry): Enable this test.
};

main() {
  var suite = new Suite('css2_1/src/colors');
  suite.processTests(_ExeceptionMatches);
}