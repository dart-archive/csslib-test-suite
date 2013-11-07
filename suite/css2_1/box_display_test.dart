// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library box_display_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'anonymous-boxes-inheritance-001-ref.xht' : // Missing semi after property.
    'div { height: 100px; width: 100px; } '
    'div#blue { background-color: blue; } '
    'div#orange { background-color: orange; }',
  'block-in-inline-relpos-002.xht' : stripSpacesAndComments,
  'containing-block-019.xht' : stripSpacesAndComments,
  'containing-block-020.xht' : stripSpacesAndComments,
  'containing-block-021.xht' : stripSpacesAndComments,
  'containing-block-022.xht' : stripSpacesAndComments,
  'containing-block-024.xht' : SKIP_TEST,     // TODO(terry): Enable this test.
  'containing-block-025.xht' : SKIP_TEST,     // TODO(terry): Enable this test.
  'display-applies-to-001.xht' : stripComment,
  'display-applies-to-002.xht' : stripComment,
  'root-box-002.xht' : SKIP_TEST,             // TODO(terry): Enable this test.
};

main() {
  var suite = new Suite('css2_1/src/box-display');
  suite.processTests(_ExeceptionMatches);
}