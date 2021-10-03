// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRolling());
}

class DiceRolling extends StatefulWidget {
  @override
  _DiceRollingState createState() => _DiceRollingState();
}

class _DiceRollingState extends State<DiceRolling> {
  int DiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Center(child: Text('Dice Rolling')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Expanded(
                flex: 1,
                child:
                    Center(child: Image.asset('assets/dice_$DiceImage.png'))),
            Spacer(),
            RaisedButton(
              onPressed: () {
                setState(() {
                  DiceImage = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll the Dice'),
            )
          ],
        ),
      ),
      title: 'Rolling Dice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
