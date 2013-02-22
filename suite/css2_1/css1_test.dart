// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'c11-import-000.xht' : SKIP_TEST,         // TODO(terry): Enable this test.
  'c14-classes-000.xht' : SKIP_TEST,        // TODO(terry): Enable this test.
  'c17-comments-000.xht' : completeFixup,
  'c17-comments-001.xht' :                  // Comments ommitted.
    'body { color: green; } '
    '.one { color: green; } '
    '.three { color: green; } '
    '.five { color: green; } '
    '.six { color: green; } '
    '.seven { color: green; } '
    '.eight { color: green; }',
  'c44-ln-box-003.xht' :                    // Comments, spacing, and parsing
    'div {'
    ' font: 20px/ 40px Ahem;'
    ' color: white;'
    ' background: red url("support/css1test44d.png") no-repeat;'
    ' width: 14em;'
    ' padding: 0.5em 1em;'
    ' border: 1em solid green; '
    '} '
    'img.twoc {'
    ' vertical-align: -0.7em;'
    ' width: 2em;'
    ' height: 2em;'
    ' padding: 0.4em 0.5em 0.6em;'
    ' border: solid 1em;'
    ' margin: -1.5em -0.5em; '
    '}',
  'c5525-fltwrap-000.xht' : completeFixup,
  'c5526c-display-000.xht' : replaceColors,
  'c532-bgcolor-000.xht' : replaceColors,
  'c563-list-type-000.xht' : SKIP_TEST,       // TODO(terry): Enable this test.
  'c61-ex-len-000-ref.xht' : stripSpacesAndComments,
  'c63-color-000.xht' : replaceColors,
  'c64-uri-000.xht' : SKIP_TEST,              // TODO(terry): Enable this test.
  'c71-fwd-parsing-000.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'c71-fwd-parsing-001.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'c71-fwd-parsing-002.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'c71-fwd-parsing-004.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
};

main() {
  var suite = new Suite('css2_1/src/css1');
  suite.processTests(_ExeceptionMatches);
}