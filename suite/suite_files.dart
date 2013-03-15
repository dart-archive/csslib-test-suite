// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library suite_files;

import 'dart:io';

import 'package:html5lib/dom.dart';
import 'package:html5lib/parser.dart';
import 'package:unittest/unittest.dart';
import 'suite_options.dart';
import '../testing.dart';


/** Messages to display. */
_Output out = new _Output();

const String SKIP_TEST = '<<SKIP-TEST>>';

typedef String NormalizeCss(String output);

/** Support class to output suite status with and w/o linebreaks. */
class _Output {
  StringBuffer outMessage = new StringBuffer();

  void display(String msg, [String header]) {
    if (header != null && outMessage.isEmpty) {
      outMessage.write(header);
    }
    outMessage.write(msg);
  }

  void displayLine(String msg, [bool breakLine = false]) {
    if (breakLine && !outMessage.isEmpty) {
      print(outMessage.toString());
      outMessage = new StringBuffer();
    }
    if (msg.length > 0) {
      display(msg);
      print(outMessage.toString());
      outMessage = new StringBuffer();
    }
  }
}

class SuiteTest {
  const String CDATA_START = '<![CDATA[ ';
  const String CDATA_END = ' ]]>';

  /** Test file running. */
  final Path filePath;

  /** Current document of test file. */
  final Document document;

  /**
   * Expected output css or null if the expected css is the same as the input.
   */
  final expectedCss;

  final String directoryName;

  bool checked = true;

  SuiteTest(Path fPath, this.document, this.expectedCss)
      : filePath = fPath, directoryName = fPath.directoryPath.toString();

  /**
   * Any test marked as invalid in syntax needs to be skipped need to handle
   * encoding and richer error recovering for bad CSS.
   */
  bool _skipTest() {
    for (var meta in document.queryAll('meta')) {
      if (meta.attributes.containsKey('content')) {
        if (meta.attributes['content'].contains('invalid')) {
          if (options.verbose || options.displayInvalidTests) {
            out.display('.', "SKIP INVALID TESTS: ");
          }
          return true;
        }
      }
    }
    return false;
  }

  void testCss() {
    // TODO(terry): Need to remove at some point; skipping tests marked invalid.
    if (_skipTest()) return;

    List styles = document.queryAll('style');
    if (styles.length == 0) {
      styles = document.queryAll('cssrules');
    }
    bool multiStyles = styles.length > 1;
    var orgCssBuff = new StringBuffer();
    var parsedCssBuff = new StringBuffer();
    for (var style in styles) {
      for (var node in style.nodes) {
        var errs = [];
        var stylesheet = parseCss(node.value, errors: errs);

        if (!errs.isEmpty) {
          // TODO(terry): Enable below to fix problems in CSS checked mode.
          // for (var error in cssErrors) {
          //   out.displayLine('       Fix it : $error');
          // }
          // out.displayLine("   $filename   --no-checked ONLY");

          stylesheet = parseCss(node.value, errors: errs..clear(),
              opts: ['--no-colors', 'memory']);
          checked = false;
        }

        // An error is a problem; emit the error(s) as the expect's reason
        // parameter.
        String allErrors = null;
        if (!errs.isEmpty) {
          StringBuffer errors = new StringBuffer(directoryName);
          for (var error in errs) {
            errors.write(">> ERROR ${filePath.filename} : $error\n");
          }
          allErrors = errors.toString();
        }
        expect(errs.isEmpty, true, reason: allErrors);

        expect(stylesheet != null, true, reason: directoryName);

        var orgCss = _normalizeCss(node.value);

        // Compare the CSS using a compressed emitter.
        var newCssAsCompact = compactCss(stylesheet);
        if (newCssAsCompact != orgCss) {
          // Remove an trailing semi-colons.
          if (orgCss.endsWith(';')) {
            orgCss = orgCss.substring(0, orgCss.length - 1);
          }

          // Remove any <![CDATA[    ]]> that wraps the style block.
          if (orgCss.startsWith(CDATA_START) && orgCss.endsWith(CDATA_END)) {
            orgCss = orgCss.substring(CDATA_START.length,
                orgCss.length - CDATA_END.length);
          }
          orgCss = orgCss;
        }

        if (!parsedCssBuff.isEmpty && multiStyles) {
          parsedCssBuff.write(' ');
        }
        parsedCssBuff.write(newCssAsCompact);

        if (!orgCssBuff.isEmpty && multiStyles) {
          orgCssBuff.write(' ');
        }
        orgCssBuff.write(orgCss);

        for (var error in errs) {
          expect('', 'CSS ERROR: $error', reason: directoryName);
        }
      }
    }

    var orgCss = orgCssBuff.toString();
    if (expectedCss != null) {
      if (expectedCss is String) {
        orgCss = expectedCss;
      } else if (expectedCss is Function) {
        // Normalize the CSS input for comparisions.
        try {
          NormalizeCss normalize = expectedCss;
          orgCss = normalize(orgCss);
        } catch (e) {
          expect(false, true, reason: "Function not of type NormalizeCss");
        }
      } else {
        expect(true, expectedCss is Function || expectedCss is String);
      }
    }

    expect(parsedCssBuff.toString(), orgCss, reason: directoryName);
  }

  /**
   * Remove all new lines and reduce multiple spaces to one space, trim leading
   * and trailing spaces w/o touching any spaces inside of quotes.
   */
  String _normalizeCss(_string) {
    bool isWhitespace(String ch) => (' \n\r\t'.indexOf(ch) >= 0);
    bool isQuote(String ch) => ('\'"'.indexOf(ch) >= 0);

    StringBuffer result = new StringBuffer();
    bool skipSpace = true;
    bool inQuote = false;
    for (var i = 0; i < _string.length; i++) {
      var character = _string[i];

      // TODO(terry): Handle escaped " and ' (e.g., "\'" and "\"").
      if (isQuote(character)) {
        inQuote = !inQuote;
      }
      if (isWhitespace(character) && !inQuote) {
        if (!skipSpace) {
          result.write(' ');
          skipSpace = true;
        }
      } else {
        result.write(character);
        skipSpace = false;
      }
    }
    return result.toString().trim();
  }

}

class Suite {
  Directory suiteDir;
  final String processDir;

  int uncheckedRun = 0;
  var testsRunning = [];
  var validTestsSkipped = [];

  Suite(this.processDir) {
    var currDir = new Directory.current();
    suiteDir = new Directory('${currDir.path}/${options.dir}/$processDir');
  }

  /** Prepare to process a test file. */
  void _processFile(File path, Map<String, Object> exceptionMatches) {
    expect(path.existsSync(), true, reason: "File ${path} must exist");
    Path filePath = new Path(path.fullPathSync());
    File file = new File.fromPath(filePath);
    if (filePath.extension == 'xht' || filePath.extension == 'html' ||
        filePath.extension == 'xml') {
      var expectedOutput = exceptionMatches[filePath.filename];
      if (expectedOutput != null) {
        // If cssToMatch is equal to SKIP_TEST then skip this test.
        if (expectedOutput != null && expectedOutput == SKIP_TEST) {
          validTestsSkipped.add(filePath.filename);
          return;
        }
      }

      _processTestFile(file, filePath, expectedOutput);
    }
  }

  /** Process all files in any test suite subdirectory. */
  void _processDirectory(Directory dir, Map<String, Object> exceptionMatches) {
    expect(dir.existsSync(), true, reason: "Directory ${dir.path} must exist");
    var lister = dir.listSync(recursive: true);

    for (var path in lister) {
      if (path is File) {
        _processFile(path, exceptionMatches);
      } else {
        _processDirectory(path, exceptionMatches);
      }
    };
  }

  /** Run all tests in the test suite directory. */
  void processTests(Map<String, Object> exceptionMatches) {
    if (options.verbose) {
      out.display("$processDir", "Processing Suite ${suiteDir.path} :   ");
    }

    _processDirectory(suiteDir, exceptionMatches);

    // Signal when all files processed.
    if (options.verbose) {
      var testSkipped = validTestsSkipped.length == 0 ? "" :
          " SKIPPING [${validTestsSkipped.length}]";
      out.displayLine(
          "RUNNING [${testsRunning.length}]$testSkipped: $processDir",
          true);
    }
    if (validTestsSkipped.length > 0 &&
        (options.verbose || options.displaySkippedTests)) {
      out.displayLine(
          "Tests Skipped [${validTestsSkipped.length}]  "
          "$processDir: ${validTestsSkipped.toString()}",
          true);
    }

    out.displayLine("", true);
  }

  void _processTestFile(File file, Path filePath, [var cssMatch]) {
    String contents = file.readAsStringSync();

    // Parses an HTML file and returns a DOM-like tree.
    var parser = new HtmlParser(contents);
    var document = parser.parse();

    // TODO(terry): Skip tests in syntax until encoding is handled properly.
    var skip = filePath.directoryPath.toString().endsWith('css2_1/src/syntax');
    var suiteTest = new SuiteTest(filePath, document, cssMatch);

    testsRunning.add(suiteTest);

    // Any error(s) is a problem.
    for (var error in parser.errors) {
      out.displayLine(">> ERROR ${filePath.filename} : $error", true);
    }
    expect(parser.errors.length, 0,
        reason: filePath.toString());

    test(filePath.filename, () {
      suiteTest.testCss();
      finished(suiteTest);
    });
  }

  void finished(SuiteTest test) {
    if (!test.checked) {
      uncheckedRun++;
    }
    var idx = testsRunning.indexOf(test);
    if (idx != -1) {
      testsRunning.removeAt(idx);
      if (testsRunning.length == 0) {
        // TODO(terry): Keep track of unchecked CSS ultimately we'd like all
        //              tests to be run in checked mode.
        if (options.verbose) {
          out.displayLine("${suiteDir.path} : CSS w/o checked $uncheckedRun",
              true);
        }
      }
    }
  }
}

/**
 * Collection of functions used to normalize CSS input for comparing generated
 * CSS from the expected CSS.  These functions match the function signature
 * expected for _ExeceptionMatches.
 */

String replaceQuotes(String output) => output.replaceAll('\'', '"');

String replaceLineHeights(String output) =>
  output.replaceAll("/1em", "/ 1em")
        .replaceAll("1em/", "1em/ ")
        .replaceAll("16px/", "16px/ ");

String squishSelectors(String output) => output.replaceAll(", #", ",#");

String replaceColors(String output) =>
  output.replaceAll('#000000', 'black')
        .replaceAll('#ff0000', 'red')
        .replaceAll('#00ff00', 'lime')
        .replaceAll('#0000ff', 'blue')
        .replaceAll('#ffffff', 'white')
        .replaceAll('#008000', 'green')
        .replaceAll('#000080', 'navy')
        .replaceAll('#ffa500', 'orange')
        .replaceAll('#ffff00', 'yellow')
        .replaceAll('#808000', 'olive')
        .replaceAll('#800080', 'purple')
        .replaceAll('#ff00ff', 'fuchsia')
        .replaceAll('#00ffff', 'aqua')
        .replaceAll('#008080', 'teal')
        .replaceAll('#c0c0c0', 'silver')
        .replaceAll('#808080', 'gray')
        .replaceAll('#800000', 'maroon')
        .replaceAll('#000;', 'black;')
        .replaceAll('#fff;', 'white;')
        .replaceAll('#dddddd;', '#ddd;')
        .replaceAll('#ff6633;', '#f63;')
        .replaceAll('#000099;', '#009;')
        .replaceAll('#009900;', '#090;')
        .replaceAll('#999999;', '#999;')
        .replaceAll('#990000;', '#900;')
        .replaceAll('#ccffcc;', '#cfc;')
        .replaceAll('#AAFFAA;', '#AFA;')
        .replaceAll('#ddffdd;', '#dfd;')
        .replaceAll('#cc0000;', '#c00;')
        .replaceAll('cyan', 'aqua')             // Cyan and aqua are same.
        .replaceAll('Blue', 'blue');            // Blue is always blue.

String stripComment(String s) {
  var start = s.indexOf('/*');
  if (start == -1) return s;
  var end = s.indexOf('*/', start);
  if (end == -1) return s;
  var before = s.substring(0, start);
  var after = stripComment(s.substring(end + 2));
  return '$before $after'.trim();
}

/** Remove all CR, LF and compacts runs of more than 1 space to 1 space. */
String stripExtraSpacesCR(String output) {
  var s = output.replaceAll("\r", " ")
                .replaceAll("\n", " ")
                .replaceAll("\t", " ")
                .replaceAll("\f", " ")
                .replaceAll("\v", " ").trim();
  var start = 0;
  while (start != -1) {
    start = s.indexOf(' ', start);
    if (start != -1) {
      var end = start;
      // Find run of spaces
      while (s[end + 1] == ' ') {
        end++;
      }
      if (end != start) {
        var before = s.substring(0, start);
        var after = s.substring(end);
        s = '$before$after';
      }
      start += 1;
      if (s.length == start) {
        start = -1;
      }
    }
  }
  return s;
}

String stripSpacesAndComments(String output) =>
    stripExtraSpacesCR(stripComment(output));

String completeFixup(String output) =>
    replaceLineHeights(replaceQuotes(squishSelectors(replaceColors(
    stripExtraSpacesCR(stripComment(output))))));
