// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library other_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'xml-lang-selectors-001.html' :  SKIP_TEST,  // TODO(terry): Enable this test.
  'xml-lang-selectors-002.html' :  SKIP_TEST,  // TODO(terry): Enable this test.
};

main() {
  var suite = new Suite('css2_1/src/other-formats');
  suite.processTests(_ExeceptionMatches);
}