import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reminder_app/data/providers/database_provider.dart';
import 'package:reminder_app/features/reminder/screens/reminder_screen_3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Initialize the database service
    final isarAsyncValue = ref.watch(isarProvider);

    return isarAsyncValue.when(
      data: (isar) {
        return MaterialApp(
          title: 'Reminder App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ReminderScreenVersionThree(),
        );
      },
      loading: () => const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      error: (error, stack) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Error initializing Isar: $error'),
          ),
        ),
      ),
    );
  }
}
