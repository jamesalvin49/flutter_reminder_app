
enum EasterNotificationType {
  ashWednesday,
  palmSunday,
  holyThursday,
  goodFriday,
  holySaturday,
  easterSunday,
}

enum RepeatNotificaionType {
  daily,
  weekly,
  monthly,
  yearly,
}

enum NotificationType {
  easterNotification,
  oneTimeNotification,
  repeatNotification,
}

class Notification{
  final int notificationId;
  final String title;
  final int userId;
  final NotificationType notificationType;
  final String timeZone;
  final bool isRecurring;

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
  String? icon; 
}

class EasterNotification extends Notification {
  final EasterNotificationType easterNotificationType;

  EasterNotification({
    required this.easterNotificationType,
    required int notificationId,
    required String title,
    required int userId,
    required NotificationType notificationType,
    required String timeZone,
    required bool isRecurring,
  }) : super(
    notificationId: notificationId,
    title: title,
    userId: userId,
    notificationType: notificationType,
    timeZone: timeZone,
    isRecurring: isRecurring,
  );
}

class OneTimeNotification extends Notification {
  final DateTime dateTime;

  OneTimeNotification({
    required this.dateTime,
    required int notificationId,
    required String title,
    required int userId,
    required NotificationType notificationType,
    required String timeZone,
    required bool isRecurring,
  }) : super(
    notificationId: notificationId,
    title: title,
    userId: userId,
    notificationType: notificationType,
    timeZone: timeZone,
    isRecurring: isRecurring,
  );
}

class RepeatNotification extends Notification {
  final RepeatNotificaionType repeatNotificaionType;
  final DateTime endDate;

  RepeatNotification({
    required this.repeatNotificaionType,
    required this.endDate,
    required int notificationId,
    required String title,
    required int userId,
    required NotificationType notificationType,
    required String timeZone,
    required bool isRecurring,
  }) : super(
    notificationId: notificationId,
    title: title,
    userId: userId,
    notificationType: notificationType,
    timeZone: timeZone,
    isRecurring: isRecurring,
  );
}