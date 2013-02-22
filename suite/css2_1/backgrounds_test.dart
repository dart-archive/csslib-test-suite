// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'background-color-002.xht' : replaceColors,
  'background-color-004.xht' : replaceColors,
  'background-color-006.xht' : replaceColors,
  'background-color-010.xht' : replaceColors,
  'background-color-012.xht' : replaceColors,
  'background-color-015.xht' : replaceColors,
  'background-color-017.xht' : replaceColors,
  'background-color-020.xht' : replaceColors,
  'background-color-022.xht' : replaceColors,
  'background-color-024.xht' : replaceColors,
  'background-color-025.xht' : replaceColors,
  'background-image-transparency-001.xht' : replaceColors,
  'background-position-202.xht' : stripComment,
  'background-position-203.xht' : stripComment,
  'background-position-applies-to-008.xht' : replaceLineHeights,
  'background-position-applies-to-001.xht' : replaceQuotes,
  'background-position-applies-to-015.xht' : replaceQuotes,
  'background-repeat-applies-to-015.xht' : replaceQuotes,
  'background-root-015.xht' : /* Unquoted url */
    'body {'
    ' border: solid lime;'
    ' background: white url("support/square-purple.png") no-repeat top center;'
    ' color: black; '
    '} '
    'html {'
    ' border: solid blue;'
    ' background: white url("support/square-teal.png") no-repeat top center;'
    ' color: black; '
    '} '
    ':link,:visited { color: inherit; background: transparent; } '
    '* { margin: 1em; padding: 1em; } html,body { padding-top: 70px; }',
};

main() {
  var suite = new Suite('css2_1/src/backgrounds');
  suite.processTests(_ExeceptionMatches);
}