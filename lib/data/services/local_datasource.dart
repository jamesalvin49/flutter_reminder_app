import 'package:isar/isar.dart';
import '../models/reminder_model.dart';
import '../models/user_preferences_model.dart';

class LocalDatasource {
  final Isar _isar;

  LocalDatasource(this._isar);

  Future<List<ReminderModel>> getAllReminders() async {
    return await _isar.reminderModels.where().findAll();
  }

  Future<void> addReminder(ReminderModel reminder) async {
    await _isar.writeTxn(() async {
      await _isar.reminderModels.put(reminder);
    });
  }

  Future<void> deleteReminder(int id) async {
    await _isar.writeTxn(() async {
      await _isar.reminderModels.delete(id);
    });
  }

  Future<UserPreferencesModel?> getUserPreferences(int userId) async {
    return await _isar.userPreferencesModels.where().idEqualTo(userId).findFirst();
  }

  Future<void> updateUserPreferences(UserPreferencesModel preferences) async {
    await _isar.writeTxn(() async {
      await _isar.userPreferencesModels.put(preferences);
    });
  }
}
