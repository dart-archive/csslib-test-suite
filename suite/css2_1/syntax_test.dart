// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library syntax_test;

import '../suite_files.dart';

// TODO(terry): Many tests have been disabled because of not handling improper
//              syntax or encoded charsets, etc.  Need to enable all tests.
var _ExeceptionMatches = {
  'at-charset-001.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'at-charset-002.xht' :
    '@import url(support/at-charset-002.css); div { color: red; }',
  'at-charset-004.xht' :
    '@import url(support/at-charset-004.css); div { color: red; }',
  'at-charset-005.xht' :
    '@import url(support/at-charset-005.css); div { color: red; }',
  'at-charset-006.xht' :
    '@import url(support/at-charset-006.css); div { color: red; }',
  'at-charset-008.xht' :
    '@import url(support/at-charset-008.css); div { color: red; }',
  'at-charset-009.xht' :
    '@import url(support/at-charset-009.css); div { color: red; }',
  'at-charset-012.xht' :
    '@import url(support/at-charset-012.css); div { color: red; }',
  'at-charset-013.xht' :
    '@import url(support/at-charset-013.css); div { color: red; }',
  'at-charset-014.xht' :
    '@import url(support/at-charset-014.css); div { color: red; }',
  'at-charset-015.xht' :
    '@import url(support/at-charset-015.css); div { color: red; }',
  'at-charset-016.xht' :
    '@import url(support/at-charset-016.css); div { color: red; }',
  'at-charset-019.xht' :
    '@import url(support/at-charset-019.css); div { color: red; }',
  'at-charset-020.xht' :
    '@import url(support/at-charset-020.css); div { color: red; }',
  'at-charset-021.xht' :
    '@import url(support/at-charset-021.css); div { color: red; }',
  'at-charset-024.xht' :
    '@import url(support/at-charset-024.css); div { color: red; }',
  'at-charset-025.xht' :
    '@import url(support/at-charset-025.css); div { color: red; }',
  'at-charset-026.xht' :
    '@import url(support/at-charset-026.css); div { color: red; }',
  'at-charset-027.xht' :
    '@import url(support/at-charset-027.css); div { color: red; }',
  'at-charset-028.xht' :
    '@import url(support/at-charset-028.css); div { color: red; }',
  'at-charset-029.xht' :
    '@import url(support/at-charset-029.css); div { color: red; }',
  'at-charset-030.xht' :
    '@import url(support/at-charset-030.css); div { color: red; }',
  'at-charset-033.xht' :
    '@import url(support/at-charset-033.css); div { color: green; }',
  'at-charset-034.xht' :
    '@import url(support/at-charset-034.css); div { color: green; }',
  'at-charset-035.xht' :
    '@import url(support/at-charset-035.css); div { color: green; }',
  'at-charset-036.xht' :
    '@import url(support/at-charset-036.css); div { color: green; }',
  'at-charset-037.xht' :
    '@import url(support/at-charset-037.css); div { color: green; }',
  'at-charset-038.xht' :
    '@import url(support/at-charset-038.css); div { color: green; }',
  'at-charset-039.xht' :
    '@import url(support/at-charset-039.css);',
  'at-charset-040.xht' :
    '@import url(support/at-charset-040.css); div { color: green; }',
  'at-charset-041.xht' :
    '@import url(support/at-charset-041.css); div { color: green; }',
  'at-charset-042.xht' :
    '@import url(support/at-charset-042.css); div { color: green; }',
  'at-charset-043.xht' :
    '@import url(support/at-charset-043.css); div { color: green; }',
  'at-charset-044.xht' :
    '@import url(support/at-charset-044.css); div { color: green; }',
  'at-charset-045.xht' :
    '@import url(support/at-charset-045.css); div { color: green; }',
  'at-charset-046.xht' :
    '@import url(support/at-charset-046.css); div { color: green; }',
  'at-charset-047.xht' :
    '@import url(support/at-charset-047.css); div { color: red; }',
  'at-charset-048.xht' :
    '@import url(support/at-charset-048.css); div { color: red; }',
  'at-charset-049.xht' :
    '@import url(support/at-charset-049.css); div { color: green; }',
  'at-charset-050.xht' :
    '@import url(support/at-charset-050.css); div { color: green; }',
  'at-charset-051.xht' :
    '@import url(support/at-charset-051.css); div { color: green; }',
  'at-charset-052.xht' :
    '@import url(support/at-charset-052.css); div { color: green; }',
  'at-charset-053.xht' :
    '@import url(support/at-charset-053.css); div { color: red; }',
  'at-charset-054.xht' :
    '@import url(support/at-charset-054.css); div { color: green; }',
  'at-charset-055.xht' :
    '@import url(support/at-charset-055.css); div { color: green; }',
  'at-charset-056.xht' :
    '@import url(support/at-charset-056.css); div { color: green; }',
  'at-charset-057.xht' :
    '@import url(support/at-charset-057.css); div { color: green; }',
  'at-charset-058.xht' :
    '@import url(support/at-charset-058.css); div { color: green; }',
  'at-charset-059.xht' :
    '@import url(support/at-charset-059.css); div { color: green; }',
  'at-charset-060.xht' :
    '@import url(support/at-charset-060.css); div { color: green; }',
  'at-charset-061.xht' : SKIP_TEST,                   // TODO(terry): Enable.
  'at-keywords-001.xht' :                             // Spacing, @ and empty {}
    '@import url("support/import-red.css"); ignore { } p { color: green; }',
  'at-rules-001.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'at-rules-002.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'at-rules-003.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'at-rules-004.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'blocks-002.xht' : stripExtraSpacesCR,
  'case-sensitive-000.xht' :                          // green normalized.
    'p { color: white; } p { background: red; } p { bACkGRounD: green; }',
  'case-sensitive-001.xht' : SKIP_TEST,               // TODO(terry): Enable.
  'case-sensitive-003.xht' : SKIP_TEST,               // TODO(terry): Enable.
  'case-sensitive-004.xht' : SKIP_TEST,               // TODO(terry): Enable.
  'case-sensitive-008.xht' :                          // Spacing selector format.
    '#myid,#MYID,.myclass,.MYCLASS,[title="MYTITLE"],[title="mytitle"] {'
    ' color: red; '
    '}',
  'colors-001.xht' : SKIP_TEST,                       // TODO(terry): Enable.
  'colors-005.xht' : stripExtraSpacesCR,
  'colors-006.xht' : completeFixup,
  'core-syntax-001.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-002.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-003.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-004.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-006.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-007.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-008.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'core-syntax-009.xht' : SKIP_TEST,                  // TODO(terry): Enable.
  'counters-003.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-004.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-005.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-006.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-007.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-008.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-009.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'counters-010.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'declaration-whitespace-001.xht' : SKIP_TEST,       // TODO(terry): Enable.
  'escaped-ident-001.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'escaped-ident-002.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'escaped-ident-004.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'escaped-ident-char-001.xht' : SKIP_TEST,           // TODO(terry): Enable.
  'escaped-ident-spaces-001.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escaped-ident-spaces-002.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escaped-ident-spaces-003.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escaped-ident-spaces-004.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escaped-ident-spaces-005.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escaped-ident-spaces-006.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escaped-ident-spaces-007.xht' : SKIP_TEST,         // TODO(terry): Enable.
  'escapes-001.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-002.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-003.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-004.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-005.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-006.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-007.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-011.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-012.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-013.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'escapes-014.xht' : SKIP_TEST,                      // TODO(terry): Enable.
  'ident-004.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-005.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-006.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-007.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-010.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-011.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-012.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'ident-013.xht' : SKIP_TEST,                        // TODO(terry): Enable.
  'keywords-001.xht' : SKIP_TEST,                     // TODO(terry): Enable.
  'quoted-string-002.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'quoted-string-003.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'quoted-string-004.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'sgml-comments-000.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'comments-001.xht' :                                // Handle special comments
    'div { color: green; }',
  'comments-005.xht' : stripSpacesAndComments,
  'sgml-comments-001.xht' : SKIP_TEST,                // TODO(terry): Enable.
  'sgml-comments-002.xht' :                           // Handle bad comments.
    '-- > -- > .c { color: green; }',
  'uri-001.xht' :
    '@import url(support/uri-001.css);',
  'uri-004.xht' :
    'div { background: red url("support/%27green%20block.png"); }',
  'uri-005.xht' :                                     // Unquoted url
    r'''div { background: red url("support/\'green\ block.png"); }''',
  'uri-014.xht' :                                     // Unquoted url & symbol
    'p {'
    ' background: red;'
    ' background: red url("support/,uri-014.png");'
    ' color: white; '
    '}',
  'uri-015.xht' : SKIP_TEST,                          // Skip testing bad HTML.
  'uri-016.xht' : SKIP_TEST,                          // Skip testing bad HTML.
  'uri-017.xht' : SKIP_TEST,                          // Skip testing bad HTML.
  'uri-018.xht' : SKIP_TEST,                          // Skip testing bad HTML.
  'whitespace-001.xht' : SKIP_TEST,                   // TODO(terry): Enable.
  'whitespace-002.xht' : SKIP_TEST,                   // TODO(terry): Enable.
};

main() {
  var suite = new Suite('css2_1/src/syntax');
  suite.processTests(_ExeceptionMatches);
}