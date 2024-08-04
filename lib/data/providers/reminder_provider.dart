import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reminder_app/data/providers/database_provider.dart';
import 'package:reminder_app/data/services/local_datasource.dart';
import 'package:reminder_app/data/services/reminder_service.dart';
import '../models/reminder_model.dart';

final reminderProvider = StateNotifierProvider<ReminderNotifier, List<ReminderModel>>((ref) {
  final reminderService = ref.watch(reminderServiceProvider);
  return ReminderNotifier(reminderService);
});

final reminderServiceProvider = Provider<ReminderService>((ref) {
  final localDatasource = ref.watch(localDatasourceProvider);
  return ReminderService(localDatasource);
});

final localDatasourceProvider = Provider<LocalDatasource>((ref) {
  final isar = ref.watch(isarProvider).maybeWhen(
    data: (isar) => isar,
    orElse: () => throw Exception('Isar not initialized'),
  );
  return LocalDatasource(isar);
});

class ReminderNotifier extends StateNotifier<List<ReminderModel>> {
  final ReminderService _reminderService;

  ReminderNotifier(this._reminderService) : super([]) {
    _loadReminders();
  }

  Future<void> _loadReminders() async {
    final reminders = await _reminderService.fetchReminders();
    state = reminders;
  }

  Future<void> addReminder(ReminderModel reminder) async {
    await _reminderService.createReminder(reminder);
    _loadReminders();
  }

  Future<void> deleteReminder(int id) async {
    await _reminderService.removeReminder(id);
    _loadReminders();
  }
}
