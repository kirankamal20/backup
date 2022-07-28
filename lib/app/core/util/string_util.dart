import 'package:intl/intl.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String formatDate() {
    DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss").parse(this);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('dd MMM yyyy hh:mm a');
    var outputDate = outputFormat.format(inputDate);

    return outputDate;
  }

  String formatPhone() {
    return replaceAll(" ", '').replaceAll('+', '');
  }
}
