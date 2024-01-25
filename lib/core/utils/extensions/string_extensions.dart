import 'package:intl/intl.dart';

extension StringExtensions on String {

  String get getCurrentTime {
    final date = DateTime.parse(this);

    final formatter = DateFormat('HH:mm');
    return formatter.format(date);
  }

  String get getCurrentHourIn24 {
    final date = DateTime.parse(this);

    final formatter = DateFormat('HH');
    return formatter.format(date);
  }

  String get getCurrentMinutes {
    final date = DateTime.parse(this);

    final formatter = DateFormat('mm');
    return formatter.format(date);
  }

}