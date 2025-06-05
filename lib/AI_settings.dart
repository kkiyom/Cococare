import 'package:flutter/material.dart';

class MoodSelectorPage extends StatefulWidget {
  const MoodSelectorPage({super.key});

  @override
  _MoodSelectorPageState createState() => _MoodSelectorPageState();
}

class _MoodSelectorPageState extends State<MoodSelectorPage> {
  // 選択されているムード
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6), // 薄いグレー背景
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('TalkToAI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pick a mood for your AI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            _buildMoodItem('Normal'),
            _buildMoodItem('Comfort'),
            _buildMoodItem('Advice'),
            _buildMoodItem('Motivator'),
            _buildMoodItem('Hype Girl'),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  // 選択肢の見た目だけ再現
  Widget _buildMoodItem(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            const Icon(Icons.check_box_outline_blank, color: Colors.grey),
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}