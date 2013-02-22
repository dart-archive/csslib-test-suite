// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'text-transform-fullwidth-001.xht' : replaceColors,
  'text-transform-fullwidth-001-ref.xht' : replaceColors,
  'text-transform-kana-001.xht' : replaceColors,
  'text-transform-kana-001-ref.xht' : replaceColors,
};

main() {
  var suite = new Suite('css3-text/src');
  suite.processTests(_ExeceptionMatches);
}