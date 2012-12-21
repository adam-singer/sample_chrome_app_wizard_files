#!/bin/bash
PATH=/Applications/dart/dart-sdk/bin/:$PATH
dart2js --verbose --disallow-unsafe-eval -oweb/sample_chrome_app_wizard_files.dart.js web/sample_chrome_app_wizard_files.dart

