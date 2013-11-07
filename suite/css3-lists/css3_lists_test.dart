// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library css3_lists_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'list-style-type-armenian-002.xht' : replaceColors,
  'list-style-type-armenian-003.xht' : replaceColors,
};

main() {
  var suite = new Suite('css3-lists/src');
  suite.processTests(_ExeceptionMatches);
}