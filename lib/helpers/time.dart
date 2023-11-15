import 'package:intl/intl.dart';

String isoToStringDateTime(String iso, String format) {
  final date = DateTime.parse(iso);
  final formatter = DateFormat(format);
  print(formatter.format(date));
  return formatter.format(date);
}
