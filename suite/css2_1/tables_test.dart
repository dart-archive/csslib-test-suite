// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'empty-cells-applies-to-016.xht' : SKIP_TEST,   // TODO(terry): Enable test.
};

main() {
  var suite = new Suite('css2_1/src/tables');
  suite.processTests(_ExeceptionMatches);
}