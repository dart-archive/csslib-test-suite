#!/bin/bash
# Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
# for details. All rights reserved. Use of this source code is governed by a
# BSD-style license that can be found in the LICENSE file.

# Usage: call directly in the commandline as test/run.sh ensuring that you have
# 'dart' in your path. Filter tests by passing a pattern as an argument to this
# script.

# TODO(sigmund): replace with a real test runner

# bail on error
set -e

# print commands executed by this script
# set -x

DIR=$( cd $( dirname "${BASH_SOURCE[0]}" ) && pwd )
DART_FLAGS="--checked"
TEST_PATTERN=$1

pushd $DIR
if [[ ($TEST_PATTERN == "suite") || ($TEST_PATTERN = "") ]]; then
  dart $DART_FLAGS run_all.dart --dir=suite
else
  dart $DART_FLAGS run_all.dart --dir=suite $TEST_PATTERN
fi
popd

echo All tests completed.
