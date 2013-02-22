// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'at-page-rule-001.xht' :  SKIP_TEST,      // TODO(terry): Enable this test.
  'page-container-008.xht' : replaceColors,
  'page-container-009.xht' : replaceColors,
  'page-selectors-003.xht' : stripExtraSpacesCR,
};

main() {
  var suite = new Suite('css2_1/src/page-box');
  suite.processTests(_ExeceptionMatches);
}