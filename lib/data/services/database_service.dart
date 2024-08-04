import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/reminder_model.dart';
import '../models/user_preferences_model.dart';

class DatabaseService {
  late final Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [ReminderModelSchema, UserPreferencesModelSchema],
      directory: dir.path,
    );
  }

  Future<void> close() async {
    await isar.close();
  }
}
