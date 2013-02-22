// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'border-bottom-color-001.xht' : replaceColors,
  'border-bottom-color-002.xht' : replaceColors,
  'border-bottom-color-004.xht' : replaceColors,
  'border-bottom-color-006.xht' : replaceColors,
  'border-bottom-color-010.xht' : replaceColors,
  'border-bottom-color-010-ref.xht' : replaceColors,
  'border-bottom-color-012.xht' : replaceColors,
  'border-bottom-color-015.xht' : replaceColors,
  'border-bottom-color-017.xht' : replaceColors,
  'border-bottom-color-020.xht' : replaceColors,
  'border-bottom-color-022.xht' : replaceColors,
  'border-bottom-color-024.xht' : replaceColors,
  'border-bottom-color-025.xht' : replaceColors,
  'border-left-color-001.xht' : replaceColors,
  'border-left-color-002.xht' : replaceColors,
  'border-left-color-004.xht' : replaceColors,
  'border-left-color-006.xht' : replaceColors,
  'border-left-color-010.xht' : replaceColors,
  'border-left-color-012.xht' : replaceColors,
  'border-left-color-015.xht' : replaceColors,
  'border-left-color-017.xht' : replaceColors,
  'border-left-color-020.xht' : replaceColors,
  'border-left-color-022.xht' : replaceColors,
  'border-left-color-024.xht' : replaceColors,
  'border-left-color-025.xht' : replaceColors,
  'border-right-color-001.xht' : replaceColors,
  'border-right-color-002.xht' : replaceColors,
  'border-right-color-004.xht' : replaceColors,
  'border-right-color-006.xht' : replaceColors,
  'border-right-color-010-ref.xht' : replaceColors,
  'border-right-color-010.xht' : replaceColors,
  'border-right-color-012.xht' : replaceColors,
  'border-right-color-015.xht' : replaceColors,
  'border-right-color-017.xht' : replaceColors,
  'border-right-color-020.xht' : replaceColors,
  'border-right-color-022.xht' : replaceColors,
  'border-right-color-024.xht' : replaceColors,
  'border-right-color-025.xht' : replaceColors,
  'border-right-width-095-ref.xht' : completeFixup,
  'border-top-color-001.xht' : replaceColors,
  'border-top-color-002.xht' : replaceColors,
  'border-top-color-004.xht' : replaceColors,
  'border-top-color-006.xht' : replaceColors,
  'border-top-color-010.xht' : replaceColors,
  'border-top-color-012.xht' : replaceColors,
  'border-top-color-015.xht' : replaceColors,
  'border-top-color-017.xht' : replaceColors,
  'border-top-color-020.xht' : replaceColors,
  'border-top-color-022.xht' : replaceColors,
  'border-top-color-024.xht' : replaceColors,
  'border-top-color-025.xht' : replaceColors,
};

main() {
  var suite = new Suite('css2_1/src/borders');
  suite.processTests(_ExeceptionMatches);
}