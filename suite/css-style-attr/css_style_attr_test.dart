library css_sytle_attr_test;

import '../suite_files.dart';

Map<String, Object> _ExeceptionMatches = {
  'style-attr-cascade-007.xht' : SKIP_TEST,     // Empty style tag noting to do.
};

main() {
  var suite = new Suite('css-style-attr/src');
  suite.processTests(_ExeceptionMatches);
}