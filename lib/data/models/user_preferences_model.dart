import 'package:isar/isar.dart';

part 'user_preferences_model.g.dart';

@Collection()
class UserPreferencesModel {
  Id id = Isar.autoIncrement;
  late int userId; // Foreign key for User
  late bool isDailyReminderEnabled; // True if daily reminders are enabled
  String? dailyReminderTime; // Time for daily reminders (HH:mm format)
  late String preferredEasterReminder; // "Lifetime" or "Upcoming Year"
  String? preferredReminderTime; // Preferred time for reminders
  String? defaultNotificationSound; // Default notification sound
  late bool defaultVibrationEnabled; // True if vibration is enabled by default
  late String language; // Preferred language
  late String timeZone; // Preferred time zone
  late bool darkModeEnabled; // True if dark mode is enabled

  UserPreferencesModel({
    required this.userId,
    required this.isDailyReminderEnabled,
    this.dailyReminderTime,
    required this.preferredEasterReminder,
    this.preferredReminderTime,
    this.defaultNotificationSound,
    required this.defaultVibrationEnabled,
    required this.language,
    required this.timeZone,
    required this.darkModeEnabled,
  });

  // Optional: Conversion methods between entity and model
}
