import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

enum ReminderType { easter, oneTime, repeat }

enum EasterReminder {
  daily,
  ashWednesday,
  palmSunday,
  holyThursday,
  goodFriday,
  holySaturday,
  easterSunday
}
extension EasterReminderExtension on EasterReminder {
  String get displayText {
    switch (this) {
      case EasterReminder.daily:
        return "Daily Reminder";
      case EasterReminder.ashWednesday:
        return "Ash Wednesday";
      case EasterReminder.palmSunday:
        return "Palm Sunday";
      case EasterReminder.holyThursday:
        return "Holy Thursday";
      case EasterReminder.goodFriday:
        return "Good Friday";
      case EasterReminder.holySaturday:
        return "Holy Saturday";
      case EasterReminder.easterSunday:
        return "Easter Sunday";
      default:
        return "";
    }
  }
}
// Manually define a list of all enum values
const List<EasterReminder> easterReminders = [
  EasterReminder.daily,
  EasterReminder.ashWednesday,
  EasterReminder.palmSunday,
  EasterReminder.holyThursday,
  EasterReminder.goodFriday,
  EasterReminder.holySaturday,
  EasterReminder.easterSunday,
];

enum OneTimeReminderOption { today, tomorrow, nextWeek, custom }

enum RecurrenceType { daily, weekly, monthly, yearly }

class ReminderState {
  final bool isReminderEnabled;
  final Map<EasterReminder, TimeOfDay?> easterReminderTimes;
  final OneTimeReminderOption? oneTimeReminderOption;
  final DateTime? oneTimeReminderDateTime;
  final RecurrenceType? recurrenceType;
  final DateTime? startDate;
  final DateTime? endDate;

  ReminderState({
    this.isReminderEnabled = false,
    this.easterReminderTimes = const {
      EasterReminder.daily: null,
      EasterReminder.ashWednesday: null,
      EasterReminder.palmSunday: null,
      EasterReminder.holyThursday: null,
      EasterReminder.goodFriday: null,
      EasterReminder.holySaturday: null,
      EasterReminder.easterSunday: null,
    },
    this.oneTimeReminderOption,
    this.oneTimeReminderDateTime,
    this.recurrenceType,
    this.startDate,
    this.endDate,
  });

  ReminderState copyWith({
    bool? isReminderEnabled,
    Map<EasterReminder, TimeOfDay?>? easterReminderTimes,
    OneTimeReminderOption? oneTimeReminderOption,
    DateTime? oneTimeReminderDateTime,
    RecurrenceType? recurrenceType,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return ReminderState(
      isReminderEnabled: isReminderEnabled ?? this.isReminderEnabled,
      easterReminderTimes: easterReminderTimes ?? this.easterReminderTimes,
      oneTimeReminderOption:
          oneTimeReminderOption ?? this.oneTimeReminderOption,
      oneTimeReminderDateTime:
          oneTimeReminderDateTime ?? this.oneTimeReminderDateTime,
      recurrenceType: recurrenceType ?? this.recurrenceType,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }
}

class ReminderStateNotifier extends StateNotifier<ReminderState> {
  ReminderStateNotifier() : super(ReminderState());

  // Enable or disable reminders
  void toggleReminder(bool isEnabled) {
    state = state.copyWith(isReminderEnabled: isEnabled);
  }

  // Set time for a specific Easter reminder
  void setEasterReminderTime(EasterReminder reminder, TimeOfDay? time) {
    final updatedTimes =
        Map<EasterReminder, TimeOfDay?>.from(state.easterReminderTimes);
    updatedTimes[reminder] = time;
    state = state.copyWith(easterReminderTimes: updatedTimes);
  }

  // Set a one-time reminder with a specific date and time
  void setOneTimeReminder(DateTime? dateTime) {
    state = state.copyWith(oneTimeReminderDateTime: dateTime);
  }

  // Set a recurrence type with start and end dates
  void setRecurrence(ReminderType type, RecurrenceType recurrenceType,
      DateTime start, DateTime? end) {
    if (type == ReminderType.repeat) {
      state = state.copyWith(
          recurrenceType: recurrenceType, startDate: start, endDate: end);
    }
  }

  // Reset state to initial
  void resetState() {
    state = ReminderState();
  }
}

final reminderStateProvider =
    StateNotifierProvider<ReminderStateNotifier, ReminderState>((ref) {
  return ReminderStateNotifier();
});
