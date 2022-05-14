import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  void pressBut(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {pressBut();
                },
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {pressBut();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png")),
            )
          ],
        ),
      ),
    );
  }
}
