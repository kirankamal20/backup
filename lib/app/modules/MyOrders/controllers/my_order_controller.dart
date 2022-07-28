import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MyOrderController extends GetxController {
  DateTime selectedDate = DateTime.now();
  final fromdatee = TextEditingController().obs;
  final todatee = TextEditingController().obs;
  String? fromdate;
  String? todate;
  Future<void> selectDate(BuildContext context, String dateType) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      if (dateType == "from") {
        selectedDate = picked;
        fromdate = DateFormat('dd-MM-yyyy').format(picked);
        fromdatee.value.text = fromdate.toString();
      }
      if (dateType == "to") {
        selectedDate = picked;
        todate = DateFormat('dd-MM-yyyy').format(picked);

        todatee.value.text = todate.toString();
      }
    }
  }
}
