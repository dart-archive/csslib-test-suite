library suite_files;

import 'dart:io';

import 'package:html5lib/dom.dart';
import 'package:html5lib/parser.dart';
import 'package:unittest/unittest.dart';
import '../../testing.dart';
import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'style-attr-cascade-007.xht' : SKIP_TEST,     // Empty style tag noting to do.
};

main() {
  var suite = new Suite('css-style-attr/src');
  suite.processTests(_ExeceptionMatches);
}