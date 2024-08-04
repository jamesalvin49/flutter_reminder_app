import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reminder_app/data/providers/reminder_stare_provider.dart';

class ReminderScreenVersionThree extends ConsumerWidget {
  const ReminderScreenVersionThree({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminderState = ref.watch(reminderStateProvider);
    final reminderNotifier = ref.read(reminderStateProvider.notifier);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Stations of the Cross',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            _buildImageCard(),
            const ReminderToggle(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green.shade100,
              ),
              child: AbsorbPointer(
                absorbing: !reminderState
                    .isReminderEnabled, // Disable TabBar interaction
                child: Opacity(
                  opacity: reminderState.isReminderEnabled
                      ? 1.0
                      : 0.5, // Grey out the TabBar
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(text: 'Easter'),
                      Tab(text: 'One Time'),
                      Tab(text: 'Repeat'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: reminderState.isReminderEnabled
                  ? TabBarView(
                      children: [
                        Center(child: EasterReminder()),
                        Center(child: OneTimeReminderScreen()),
                        Center(child: Text('Repeat Reminders')),
                      ],
                    )
                  : const Center(
                      child: Text('Reminder functionality is disabled.'),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard() {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.brown,
            ), // Replace with your image
          ),
          const Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reminder Settings',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Set the reminder for your prayer',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReminderToggle extends ConsumerWidget {
  const ReminderToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminderState = ref.watch(reminderStateProvider);
    final reminderNotifier = ref.read(reminderStateProvider.notifier);
    return SwitchListTile(
      title: const Text('ADD A REMINDER'),
      value: reminderState.isReminderEnabled,
      onChanged: (value) {
        reminderNotifier.toggleReminder(value);
      },
    );
  }
}

class EasterReminder extends ConsumerWidget {
  const EasterReminder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminderState = ref.watch(reminderStateProvider);
    final reminderNotifier = ref.read(reminderStateProvider.notifier);
    final reminderTimes = reminderState.easterReminderTimes;

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: reminderTimes.length,
      itemBuilder: (context, index) {
        final key = reminderTimes.keys.elementAt(index);
        final time = reminderTimes[key];

        return GestureDetector(
          onTap: () async {
            if (time != null) {
              final action = await showDialog<String>(
                context: context,
                builder: (BuildContext context) => CustomAlertDialog(
                  title: 'Reminder Options',
                  content: 'Do you want to clear or change the reminder?',
                  onClear: () {
                    reminderNotifier.setEasterReminderTime(key, null);
                  },
                  onChange: () async {
                    final selectedTime = await showTimePicker(
                      context: context,
                      initialTime: time,
                    );
                    if (selectedTime != null) {
                      reminderNotifier.setEasterReminderTime(key, selectedTime);
                    }
                  },
                  onCancel: () => {},
                ),
              );

              if (action == 'Clear') {
                reminderNotifier.setEasterReminderTime(key, null);
              } else if (action == 'Change') {
                // Already handled inside CustomAlertDialog
              }
            } else {
              final selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (selectedTime != null) {
                reminderNotifier.setEasterReminderTime(key, selectedTime);
              }
            }
          },
          child: CircleAvatar(
            radius: 40,
            backgroundColor: time != null ? Colors.blue : Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  key.displayText.split(' ')[0],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  key.displayText.split(' ')[1],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onClear;
  final VoidCallback onChange;
  final VoidCallback? onCancel;

  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onClear,
    required this.onChange,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'Clear');
            onClear();
          },
          child: const Text('Clear'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'Change');
            onChange();
          },
          child: const Text('Change'),
        ),
        if (onCancel != null)
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'Cancel');
              onCancel!();
            },
            child: const Text('Cancel'),
          ),
      ],
    );
  }
}

class OneTimeReminderScreen extends ConsumerWidget {
  const OneTimeReminderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminderState = ref.watch(reminderStateProvider);
    final reminderNotifier = ref.read(reminderStateProvider.notifier);

    return Column(
      children: [
        ListTile(
          title: Text('Set One Time Reminder'),
          subtitle: Text(reminderState.oneTimeReminderOption != null
              ? 'Reminder set for ${reminderState.oneTimeReminderOption}'
              : 'No reminder set'),
          onTap: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
            );

            if (selectedDate != null) {
              final selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (selectedTime != null) {
                final oneTimeReminder = DateTime(
                  selectedDate.year,
                  selectedDate.month,
                  selectedDate.day,
                  selectedTime.hour,
                  selectedTime.minute,
                );
                reminderNotifier.setOneTimeReminder(oneTimeReminder);
              }
            }
          },
          trailing: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              reminderNotifier.setOneTimeReminder(null);
            },
          ),
        ),
      ],
    );
  }
}
