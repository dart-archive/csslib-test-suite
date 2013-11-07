// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library css3_box_test;

import '../suite_files.dart';

var _ExeceptionMatches = {};

main() {
  var suite = new Suite('css3-box/src');
  suite.processTests(_ExeceptionMatches);
}