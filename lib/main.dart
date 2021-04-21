import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(PlayDice());
}

class PlayDice extends StatefulWidget {
  @override
  _PlayDiceState createState() => _PlayDiceState();
}

class _PlayDiceState extends State<PlayDice> {
  int nextDiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.red,
          title: Text(
            'Play Dice',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(
                  24,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/dice/dice-$nextDiceImage.png',
                  ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                setState(() {
                  nextDiceImage = Random().nextInt(6) + 1;
                });
              },
              child: Text(
                'Roll the dice',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
