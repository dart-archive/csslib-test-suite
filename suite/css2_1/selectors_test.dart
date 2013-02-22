// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'attribute-token-selector-002.xht' : SKIP_TEST, // TODO(terry): Enable test.
  'attribute-value-selector-002.xht' : SKIP_TEST, // TODO(terry): Enable test.
  'attribute-value-selector-004.xht' : SKIP_TEST, // TODO(terry): Enable test.
  'first-letter-selector-000.xht' : SKIP_TEST,    // TODO(terry): Enable test.
  'id-selector-005.xht' : SKIP_TEST,              // TODO(terry): Enable test.
  'lang-selector-001.xht' : SKIP_TEST,            // TODO(terry): Enable test.
  'lang-selector-002.xht' : SKIP_TEST,            // TODO(terry): Enable test.
  'lang-selector-003.xht' : SKIP_TEST,            // TODO(terry): Enable test.
  'lang-selector-004.xht' : SKIP_TEST,            // TODO(terry): Enable test.
  'lang-selector-005.xht' : SKIP_TEST,            // TODO(terry): Enable test.
  'lang-selector-006.xht' : SKIP_TEST,            // TODO(terry): Enable test.
  'class-selector-004.xht' :                      // Bad class selector.
    'div { color: red; }',
  'class-selector-005.xht' :                      // Bad class selector.
    '',
  'dom-hover-001.xht' :                           // Spacing, !important
    'div#green { color: red; } div:hover { color: green!important; }',
  'id-selector-004.xht' :           // Bad id selector warning checked mode.
    '',
};

main() {
  var suite = new Suite('css2_1/src/selectors');
  suite.processTests(_ExeceptionMatches);
}