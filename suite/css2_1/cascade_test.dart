// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'at-import-003.xht' :                 // Import format different.
    '@import url(support/at-import-002.css);',
  'at-import-004.xht' :                 // Import format different.
    '@import url("support/at-import-004.css")print;',
  'at-import-005.xht' :                 // Import format different.
    '@import url("support/at-import-005.css")all;',
  'at-import-006.xht' :                 // Import format different.
    '@import url("support/at-import-006.css")screen;',
  'at-import-007.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'at-import-008.xht' :                 // Import format different.
    '@import url("support/a-green.css")print;',
  'at-import-009.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'at-import-010.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'at-import-011.xht' : SKIP_TEST,      // TODO(terry): Enable this test.
  'cascade-007.xht' : SKIP_TEST,        // TODO(terry): Enable this test.
  'cascade-012.xht' : SKIP_TEST,        // TODO(terry): Enable this test.
  'html-attribute-019.xht' : completeFixup,
  'specificity-001.xht' : stripSpacesAndComments,
  'specificity-002.xht' : stripSpacesAndComments,
  'specificity-003.xht' : stripSpacesAndComments,
  'specificity-004.xht' : stripSpacesAndComments,
  'specificity-005.xht' : stripSpacesAndComments,
  'specificity-006.xht' : stripSpacesAndComments,
  'specificity-007.xht' : stripSpacesAndComments,
  'specificity-008.xht' : stripSpacesAndComments,
  'specificity-009.xht' : stripSpacesAndComments,
  'specificity-013.xht' : stripSpacesAndComments,
};

main() {
  var suite = new Suite('css2_1/src/cascade');
  suite.processTests(_ExeceptionMatches);
}