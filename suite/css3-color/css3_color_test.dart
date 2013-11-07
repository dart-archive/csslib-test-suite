// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library css3_color_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  't41-html4-keywords-a.xht' : replaceColors,
  't421-rgb-func-whitespace-b.xht' :          // Special comment/space handling.
    'html,body { background: black; } '
    '#one { color: rgb(0, 255, 0); } '
    '#two { color: rgb(0, 255, 0); } '
    '#three { color: rgb(0, 255, 0); } '
    '#four { color: rgb(0%, 100%, 0%); } '
    '#five { color: rgb(0%, 100%, 0%); } '
    '#six { color: rgb(0%, 100%, 0%); }',
  't421-rgb-hex3-a.xht' :                     // Special comment/space handling.
    '#one { color: black; background: #fff; } '
    '#two { color: #fff; background: black; } '
    '#three { color: #f00; } '
    '#four { color: #0f0; } '
    '#five { color: #00f; }',
  't421-rgb-hex6-a.xht' : replaceColors,
  't422-rgba-func-whitespace-b.xht' :        // Special comment/space handling.
    'html,body { background: black; } '
    '#one { color: rgba(0, 255, 0, 1.0); } '
    '#two { color: rgba(0, 255, 0, 1.0); } '
    '#three { color: rgba(0, 255, 0, 1.0); } '
    '#four { color: rgba(0%, 100%, 0%, 1.0); } '
    '#five { color: rgba(0%, 100%, 0%, 1.0); } '
    '#six { color: rgba(0%, 100%, 0%, 1.0); }',
   't43-svg-keywords-a.xht' : replaceColors,
};

main() {
  var suite = new Suite('css3-color/src');
  suite.processTests(_ExeceptionMatches);
}