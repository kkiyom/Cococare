import 'package:flutter/material.dart';

import 'main.dart';
import 'EmotionGraph.dart';
import 'TalkToAI.dart';
import 'Journal.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF50E3C2),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('index'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: Size(400, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmotionGraph()),
                );
              },
              child: const Text(
                'EmotionGraph',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 30), //余白
            OutlinedButton( //ボタン
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(400, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Talktoai()),
              );}, //ボタン
              child: const Text(
                  'TalkToAI',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                    ),),
            ),
            SizedBox(height: 30), //余白
            OutlinedButton(
              child: const Text(
                  'Journal',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                minimumSize: Size(400, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => journal()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}