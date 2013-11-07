// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library text_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'control-characters-002.xht' : SKIP_TEST,             // Illegal codepoint.
  'text-align-applies-to-006.xht' : SKIP_TEST,          // TODO(terry): Enable
  'white-space-control-characters-001.xht' : SKIP_TEST, // Illegal codepoint.
  'white-space-processing-006.xht' : SKIP_TEST,         // Illegal codepoint.
  'white-space-processing-007.xht' : SKIP_TEST,         // Illegal codepoint.
  'word-spacing-characters-001.xht' : SKIP_TEST,        // Illegal codepoint.
  'word-spacing-characters-002.xht' : SKIP_TEST,        // Illegal codepoint.
  'word-spacing-characters-003.xht' : SKIP_TEST,        // Illegal codepoint.
};

main() {
  var suite = new Suite('css2_1/src/text');
  suite.processTests(_ExeceptionMatches);
}