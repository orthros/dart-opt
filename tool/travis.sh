#!/bin/bash

# Fast fail the script on failures.
set -e

# Analyze the code.
dartanalyzer --strong --fatal-warnings \
  lib/opt.dart 
  

# Run the tests.
dart -c test/option_set_test.dart
dart -c test/bool_option_test.dart
dart -c test/num_option_test.dart
dart -c test/string_option_test.dart
