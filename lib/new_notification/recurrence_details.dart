import 'package:isar/isar.dart';

@Collection()
class RecurrenceDetails {
  Id id = Isar.autoIncrement;

  late int durationType;
  
  // For recurring notifications only (non-Easter related)
  int? specificTimes;
  DateTime? untilDate;
  
  // Daily
  int? repeatIntervalDays;
  
  // Weekly
  int? repeatIntervalWeeks;
  List<int>? daysOfWeek;
  
  // Monthly
  int? repeatIntervalMonths;
  int? repeatDayOption;
  int? specificDate;
  int? specificDayOfWeek;
  
  // Yearly
  int? repeatIntervalYears;
  DateTime? specificYearDate;
  int? specificYearDayOfWeek; // Storing as an integer
}
