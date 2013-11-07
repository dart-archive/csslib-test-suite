// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library normal_flow_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'replaced-min-max-001.xht' :  SKIP_TEST,    // TODO(terry): Enable this test.
};

main() {
  var suite = new Suite('css2_1/src/normal-flow');
  suite.processTests(_ExeceptionMatches);
}