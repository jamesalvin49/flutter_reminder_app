import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  bool _reminderEnabled = false;
  String _selectedFrequency = 'Easter';
  final List<String> _selectedDays = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            _buildImageCard(),
            _buildReminderToggle(),
            _buildFrequencyButtons(),
            _buildDayGrid(),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'Reminder Settings',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildImageCard() {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(color: Colors.brown),
          ), // Replace with your image
          const Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Station',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                Text('Jesus is Condemned to Death',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReminderToggle() {
    return SwitchListTile(
      title: const Text('ADD A REMINDER'),
      value: _reminderEnabled,
      onChanged: (value) {
        setState(() {
          _reminderEnabled = value;
        });
      },
    );
  }

  Widget _buildFrequencyButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: ['Easter', 'One Time', 'Repeat'].map((frequency) {
        return ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedFrequency = frequency;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                _selectedFrequency == frequency ? Colors.brown : Colors.white,
            foregroundColor:
                _selectedFrequency == frequency ? Colors.white : Colors.brown,
          ),
          child: Text(frequency),
        );
      }).toList(),
    );
  }

  Widget _buildDayGrid() {
    List<String> days = [
      'Daily Reminder',
      'Ash Wednesday',
      'Palm Sunday',
      'Holy Thursday',
      'Good Friday',
      'Holy Saturday',
      'Easter Sunday'
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: days.map((day) {
        return ElevatedButton(
          onPressed: () {
            setState(() {
              if (_selectedDays.contains(day)) {
                _selectedDays.remove(day);
              } else {
                _selectedDays.add(day);
              }
            });
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
            backgroundColor:
                _selectedDays.contains(day) ? Colors.brown : Colors.white,
            foregroundColor:
                _selectedDays.contains(day) ? Colors.white : Colors.brown,
          ),
          child: Text(day, textAlign: TextAlign.center),
        );
      }).toList(),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // Implement save functionality
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
          child: const Text('Save'),
        ),
        ElevatedButton(
          onPressed: () {
            // Implement cancel functionality
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, foregroundColor: Colors.brown),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
