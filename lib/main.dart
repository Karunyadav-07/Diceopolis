import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(75.0),
            child: AppBar(
              backgroundColor: Colors.white38,
              title: Center(
                child: Text('Dicee !!!',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.lightGreen,
                  ),
                ),

              ),
            ),

        ),
        body: DiceImagePage(),
      ),
    );
  }
}

class DiceImagePage extends StatefulWidget {
  @override
  _DiceImagePageState createState() => _DiceImagePageState();
}

class _DiceImagePageState extends State<DiceImagePage> {
  int leftdiceNo = 1;
  int rightdiceNo = 2;
  int maxValue = 6;
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftdiceNo = Random().nextInt(maxValue) + 1;
                });
                print("left button got prssed");
              },
              child: Image.asset(
                  'images/dice_$leftdiceNo.png'
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightdiceNo = Random().nextInt(maxValue) + 1;
                });
                print('right button got pressed');
              },
              child: Image.asset(
                  'images/dice_$rightdiceNo.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}


