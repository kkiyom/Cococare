import 'package:flutter/material.dart';

class EmotionGraph extends StatelessWidget {
  const EmotionGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF50E3C2),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('EmotionGraph'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('EmotionGraph')
          ],
        ),
      ),
    );
  }
}