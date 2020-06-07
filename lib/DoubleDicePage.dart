import 'dart:math';
import 'package:flutter/material.dart';

class DoubleDicePage extends StatefulWidget {
  @override
  _DoubleDicePageState createState() => _DoubleDicePageState();
}

class _DoubleDicePageState extends State<DoubleDicePage> {
  int leftDiceN = 1;
  int rightDiceN = 1;
  void change() {
    setState(() {
      leftDiceN = Random().nextInt(6) + 1;
      rightDiceN = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  change();
                  print('The button got pressed');
                },
                child: Image.asset('images/dice$leftDiceN.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  change();
                  print('The button got pressed');
                },
                child: Image.asset('images/dice$rightDiceN.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
