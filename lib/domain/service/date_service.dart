import 'package:intl/intl.dart';

class DateService {
  static const DATE_TIME_FORMAT = 'HH:mm dd.MM.yyyy';

  static String format(DateTime date) =>
      DateFormat(DATE_TIME_FORMAT).format(date);
}
