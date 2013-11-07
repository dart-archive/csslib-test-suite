// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fonts_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'font-147.xht' : SKIP_TEST,                           // TODO(terry): Enable.
  'font-family-008.xht' : SKIP_TEST,                    // TODO(terry): Enable.
  'font-family-011.xht' : stripExtraSpacesCR,
  'font-family-invalid-characters-001.xht' : SKIP_TEST, // TODO(terry): Enable.
  'font-family-invalid-characters-002.xht' : SKIP_TEST, // TODO(terry): Enable.
  'font-family-invalid-characters-003.xht' : SKIP_TEST, // TODO(terry): Enable.
  'font-family-invalid-characters-004.xht' : SKIP_TEST, // TODO(terry): Enable.
  'font-family-invalid-characters-005.xht' : SKIP_TEST, // TODO(terry): Enable.
  'font-family-invalid-characters-006.xht' : SKIP_TEST, // TODO(terry): Enable.
  'font-family-rule-002.xht' : SKIP_TEST,               // TODO(terry): Enable.
  'font-family-rule-007.xht' : SKIP_TEST,               // TODO(terry): Enable.
  'font-family-rule-017.xht' : SKIP_TEST,               // TODO(terry): Enable.
  'font-family-valid-characters-001.xht' : SKIP_TEST,   // TODO(terry): Enable.
  'font-family-valid-characters-002.xht' : SKIP_TEST,   // TODO(terry): Enable.
};

main() {
  var suite = new Suite('css2_1/src/fonts');
  suite.processTests(_ExeceptionMatches);
}