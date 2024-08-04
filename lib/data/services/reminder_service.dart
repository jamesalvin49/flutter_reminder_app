import 'package:reminder_app/data/services/local_datasource.dart';
import '../models/reminder_model.dart';

class ReminderService {
  final LocalDatasource localDatasource;

  ReminderService(this.localDatasource);

  Future<List<ReminderModel>> fetchReminders() async {
    return await localDatasource.getAllReminders();
  }

  Future<void> createReminder(ReminderModel reminder) async {
    await localDatasource.addReminder(reminder);
  }

  Future<void> removeReminder(int id) async {
    await localDatasource.deleteReminder(id);
  }
}
