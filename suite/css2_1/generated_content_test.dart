// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library generated_content_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'content-096.xht' : SKIP_TEST,                  // TODO(terry): Enable test.
  'content-156.xht' : SKIP_TEST,                  // TODO(terry): Enable test.
  'content-157.xht' : SKIP_TEST,                  // TODO(terry): Enable test.
  'content-158.xht' : SKIP_TEST,                  // TODO(terry): Enable test.
  'content-159.xht' : SKIP_TEST,                  // TODO(terry): Enable test.
  'content-173.xht' : SKIP_TEST,                  // TODO(terry): Enable test.
  'content-attr-002.xht' : SKIP_TEST,             // TODO(terry): Enable test.
  'content-inherit-001.xht' : replaceQuotes,
  'counters-hidden-001.xht' :                     // Missing semi-colons.
    'body { white-space: nowrap; } '
    'div { counter-reset: c; } '
    '#one { display: none; counter-increment: c; } '
    '#two:before { content: counter(c); }',
  'quotes-page-001.xht' :                         // Special quotes handling.
    '#test { border: solid blue; quotes: "\\"" "\\"" "\'" "\'"; } '
    '#test div:before { content: open-quote; } '
    '#test div:after { content: close-quote; } '
    '#reference { border: solid orange; }',
  'quotes-negative-001.xht' : replaceQuotes,
};

main() {
  var suite = new Suite('css2_1/src/generated-content');
  suite.processTests(_ExeceptionMatches);
}