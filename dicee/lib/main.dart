import 'package:flutter/material.dart';
import 'dicePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(child: Text('Dicee')),
        ),
        body: DicePage(),
      ),
    );
  }
}
