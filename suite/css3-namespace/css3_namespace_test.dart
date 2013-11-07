// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library css3_namespace_test;

import '../suite_files.dart';

var _ExeceptionMatches = {
  'prefix-001.xml' :                              // Quoted values.
    '@namespace Foo url(y); '
    '@namespace foo url(x); '
    'test { background: red; } '
    'Foo|test { background: lime; } '
    'foo|test { background: red; } '
    'FOO|test { background: red; }',
  'prefix-004.xml' :                              // Quoted values.
    '@namespace ""; '
    '@namespace x url(test); '
    '*|t,*|root { display: block; } '
    '*|t,t[x] { background: lime; } '
    't { background: red; }',
  'prefix-005.xml' :                              // Quoted values.
    '@namespace x url(test); '
    'root *|* { background: red; display: block; } '
    'head { display: none; } t { background: lime; }',
  'prefix-006.xml' :
    '@namespace url(test); '
    '|t { background: lime; } '
    't { background: red; } '
    '@namespace url(test); '
    't2 { background: lime; } '
    '|t2 { background: red; }',
  'scope-002.xml' :                               // Quoted values.
    'test { background: lime; } '
    '@import url("support/scope-002a.css"); '
    '@import url("support/scope-002b.css"); '
    '@namespace w url(test); x|test { background: red; }',
  'syntax-001.xml' :                              // Quoted values.
    '@namespace x url(http://www.w3.org/1999/xhtml); x|p { background: lime; }',
  'syntax-002.xml' : SKIP_TEST,                   // TODO(terry): Enable.
  'syntax-003.xml' :
    '*|test { background: red; } '
    '@namespace url(test-a); '
    'test { background: lime; } '
    '@namespace url(\'test-b\'); '
    'test { background: lime; } '
    '@namespace url("test-c"); '
    'test { background: lime; } '
    '@namespace url(test-d); '
    'test { background: lime; } '
    '@namespace url(test-e); '
    'test { background: lime; }',
  'syntax-004.xml' : SKIP_TEST,                   // TODO(terry): Enable.
  'syntax-005.xml' :                              // Quoted values.
    'test { background: red; } '
    '@namespace a url(test-a); '
    '@namespace b url(\'test-b\'); '
    '@namespace c url("test-c"); '
    '@namespace d url(test-d); '
    '@namespace e url(test-e); '
    'a|test,b|test,c|test,d|test,e|test { background: lime; }',
  'syntax-008.xml' : SKIP_TEST,                   // TODO(terry): Enable.
  'syntax-009.xml' : SKIP_TEST,                   // TODO(terry): Enable.
  'syntax-012.xml' :                              // Comments are stripped.
    'test { background: red; } '
    '@namespace a url(test-a ); '
    '@namespace b url(\'test-b\'\n); '
    '@namespace c url("test-c"\n); '
    'a|test,b|test,c|test { background: lime; }',
};

main() {
  var suite = new Suite('css3-namespace/src');
  suite.processTests(_ExeceptionMatches);
}