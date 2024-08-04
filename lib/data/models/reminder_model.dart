import 'package:isar/isar.dart';

part 'reminder_model.g.dart';

@Collection()
class ReminderModel {
  Id id = Isar.autoIncrement;
  late int userId; // Foreign key for User
  late String type; // Type of reminder (e.g., "Easter", "OneTime")
  late String title; // Title of the reminder
  late DateTime dateTime; // Scheduled date and time
  late String timeZone; // Time zone of the reminder
  late bool isRecurring; // True if the reminder is recurring
  String? recurrenceType; // Type of recurrence (e.g., "Daily", "Weekly")
  DateTime? endDate; // Optional end date for recurrence
  late String customMessage; // Custom message for the reminder
  late bool isLifetime; // True if the reminder should recur annually
  late bool isActive; // Indicates if the reminder is active
  String? notificationSound; // Custom notification sound
  late bool vibrationEnabled; // True if vibration is enabled
  late DateTime createdAt; // Creation timestamp
  DateTime? updatedAt; // Last update timestamp
  String? icon; // Optional icon associated with the reminder

  ReminderModel({
    required this.userId,
    required this.type,
    required this.title,
    required this.dateTime,
    required this.timeZone,
    required this.isRecurring,
    this.recurrenceType,
    this.endDate,
    required this.customMessage,
    required this.isLifetime,
    required this.isActive,
    this.notificationSound,
    required this.vibrationEnabled,
    required this.createdAt,
    this.updatedAt,
    this.icon,
  });

  // Optional: Conversion methods between entity and model
}
