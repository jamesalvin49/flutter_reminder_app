import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:reminder_app/data/services/database_service.dart';

final databaseServiceProvider = Provider<DatabaseService>((ref) {
  final databaseService = DatabaseService();
  ref.onDispose(() => databaseService.close());
  return databaseService;
});

final isarProvider = FutureProvider<Isar>((ref) async {
  final databaseService = ref.watch(databaseServiceProvider);
  await databaseService.init(); // Ensure the database is initialized
  return databaseService.isar;
});