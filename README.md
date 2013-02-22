W3C CSS Test Suite Repository
=============================

All tests originated from the [CSS Working Group Test repository](
http://test.csswg.org/) from the /approved directory.  This directory contains
all tests that have been reviewed and approved.  Some tests have been modified
to pass HTML5 parsing, or normalizing of CSS for suite testing; the essence of
CSS has not been changed.

The suite of tests is normally used to validate CSS rendering in a browser.
This library uses the tests to validate CSS parsing and CSS' representation in
a AST to ensure valid CSS is accepted.

[![Build Status](https://drone.io/github.com/dart-lang/csslib-test-suite/status.png)](https://drone.io/github.com/dart-lang/csslib-test-suite/latest)

Running All Tests
-----------------

All enabled tests should be passing.  Set current directory:
```bash
cd csslib-test-suite
```

To run all suite tests:
```bash
# Make sure dependencies are installed
pub install

# Run command line tests
#export DART_SDK=path/to/dart/sdk
dart run_all.dart
```
Running a set of tests
----------------------

To run an particular set of tests
```bash
dart test/suite/selectors3/selectors3_test.dart
```

Tests Suite Infrastructure
--------------------------

All suite tests are run from the dart file test/suite/run_all.dart

Each CSS test is located in the src directory within the directory named for the
set of tests to run.  For example, the directory suite/css3-page will test the
@page CSS directive.  In the css3-page directory will be a src directory of the
the raw files that contain HTML and/or CSS and a dart file that spins up the
tests to run.  In each dart file, is an _ExceptionMatches Map that maps test
files to either be skipped (marked as SKIP_TEST) or matching text to validate
the parsed CSS text (typically the normalizing of spaces, color values, etc.).

Disclaimer: Any test marked as SKIP_TEST has a TODO comment that will be fixed
as we add more functionality (e.g., encoding, richer selector parsing and error
recovery).
