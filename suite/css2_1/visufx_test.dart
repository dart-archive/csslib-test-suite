// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library visufx_test;

import 'dart:io';

import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {};

main() {
  var suite = new Suite('css2_1/src/visufx');
  suite.processTests(_ExeceptionMatches);
}