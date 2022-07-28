import 'dart:math';

import 'package:get/get.dart';
import 'package:let_log/let_log.dart';

double roundDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

List<double> equalPartsWithRounded(double total, int parts) {
  var equalvalue = total / parts.toDouble();
  var partslist = <double>[];
  for (var i = 0; i < parts; i++) {
    if (i == parts - 1) {
      var temptotal = equalvalue.toPrecision(2) * parts.toDouble();
      Logger.log('temptotal: $temptotal');
      var adjustedvalue = roundDouble(total - temptotal, 2);
      Logger.log('adjustedvalue: $adjustedvalue');
      partslist.add((equalvalue.toPrecision(2) + adjustedvalue).toPrecision(2));
    } else {
      partslist.add(equalvalue.toPrecision(2));
    }
  }
  return partslist;
}
