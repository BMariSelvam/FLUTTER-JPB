import 'dart:convert';

import 'package:jpb/Helper/preferencehelper.dart';

void prettyPrintJson(Map data) {
  const JsonEncoder encoder = JsonEncoder.withIndent('  ');
  final dynamic prettyString = encoder.convert(data);
  prettyString
      .split('\n')
      .forEach((dynamic element) => PreferenceHelper.log(element));
}
