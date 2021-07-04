import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int firstDiceNum = 1;
  int secondDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('first');
                  pressDice();
                },
                child: Image.asset("images/dice$secondDiceNum.png"),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Next');
                  pressDice();
                },
                child: Image.asset("images/dice$firstDiceNum.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pressDice() {
    setState(() {
      firstDiceNum = Random().nextInt(6) + 1;
      secondDiceNum = Random().nextInt(6) + 1;
    });
  }
}
