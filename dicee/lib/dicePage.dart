import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePage createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  int left = 1, right = 1;
  int roleDice() => Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$left.png'),
              onPressed: () => setState(() => left = roleDice()),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$right.png'),
              onPressed: () => setState(() => right = roleDice()),
            ),
          ),
        ],
      ),
    );
  }
}
