import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'AI_settings.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
    home: const MyHomePage(title: 'フラッターデモホームページ'),
  );
}

class Talktoai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF50E3C2),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('TalkToAI'),
        actions: [IconButton(
            onPressed: (){
    var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MoodSelectorPage()));
    }, icon: const Icon(Icons.settings)),],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               Text(
                'TalkToAI',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
          ],
        ),
      ),
    );
  }
}