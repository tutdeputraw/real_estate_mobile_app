import 'dart:convert';

import 'package:flutter/foundation.dart';

void printJson(Map<String, dynamic> json) {
  var encoder = const JsonEncoder.withIndent('  ');
  var prettyPrint = encoder.convert(json);
  if (kDebugMode) {
    print(prettyPrint);
  }
}
