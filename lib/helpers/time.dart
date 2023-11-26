import 'package:intl/intl.dart';

String isoToStringDateTime(String iso, String format) {
  final date = DateTime.parse(iso);
  final formatter = DateFormat(format);
  return formatter.format(date);
}
