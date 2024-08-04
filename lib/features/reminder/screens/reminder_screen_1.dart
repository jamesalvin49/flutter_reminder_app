import 'package:flutter/material.dart';

class ReminderScreenVersionTwo extends StatefulWidget {
  const ReminderScreenVersionTwo({super.key});

  @override
  State<ReminderScreenVersionTwo> createState() =>
      _ReminderScreenVersionTwoState();
}

class _ReminderScreenVersionTwoState extends State<ReminderScreenVersionTwo> {
  bool _reminderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Custom TabBar',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            _buildImageCard(),
            _buildReminderToggle(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green.shade100,
              ),
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
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Easter Reminders')),
                  Center(child: Text('One Time Reminders')),
                  Center(child: Text('Repeat Reminders')),
                ],
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
            decoration: const BoxDecoration(color: Colors.brown),
          ), // Replace with your image
          const Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Reminder Settings',
                    style: TextStyle(color: Colors.white, fontSize: 24)),
                Text('Set the reminder for your prayer',
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
}
