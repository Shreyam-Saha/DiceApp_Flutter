import 'package:flutter/material.dart';
import 'dart:math';
class SingleDicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<SingleDicePage> {
  int leftDiceN = 1;


  void change() {
    setState(() {
      leftDiceN = Random().nextInt(6) + 1;

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

          ],
        ),
      ),
    );
  }
}
