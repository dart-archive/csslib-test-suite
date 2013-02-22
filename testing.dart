// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** Common definitions used for setting up the test environment. */
library testing;

import 'package:csslib/parser.dart';
import 'package:csslib/visitor.dart';
import 'package:csslib/src/messages.dart';

useMockMessages() {
  messages = new Messages(printHandler: (message) {});
}

/**
 * Spin-up CSS parser in checked mode to detect any problematic CSS.  Normally,
 * CSS will allow any property/value pairs regardless of validity; all of our
 * tests (by default) will ensure that the CSS is really valid.
 */
StyleSheet parseCss(String cssInput, {List errors, List opts}) =>
  parse(cssInput, errors: errors, options: opts == null ?
      ['--no-colors', '--checked', '--warnings_as_errors', 'memory'] : opts);

/**
 * Helper function to emit compact (non-pretty printed) CSS for suite test
 * comparsions.  Spaces, new lines, etc. are reduced for easier comparsions of
 * expected suite test results.
 */
String compactCss(StyleSheet ss) {
  var compactCss = new CssPrinter()..visitTree(ss, pretty: false);
  return compactCss.toString();
}
