import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SingleDicePage.dart';
import 'DoubleDicePage.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: InputPage(),
      ),
    ),
  );
}

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'The Dice App',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 40.0, color: Colors.white),
        ),
        SizedBox(height: 70.0),
        FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleDicePage()));
          },
          child: Text(
            'Single Dice',
            style: TextStyle(fontSize: 40.0, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DoubleDicePage()));
          },
          child: Text(
            'Double Dice',
            style: TextStyle(fontSize: 40.0, color: Colors.white),
          ),
        ),
      ],
    ));
  }
}
