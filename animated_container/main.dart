import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Animation'),
          backgroundColor: Colors.pink[300],
        ),
        body: Center(
          child: AnimatedContainer(
            color: _toggle ? Colors.amber : Colors.teal[200],
            width: _toggle ? 150.0 : 200.0,
            height: _toggle ? 200.0 : 150.0,
            padding: EdgeInsets.all(10.0),
            duration: Duration(milliseconds: 500),
            child: FlutterLogo(
              colors: Colors.pink,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink[300],
          onPressed: () => setState(() => _toggle = !_toggle),
          child: Icon(Icons.transform),
        ),
      ),
    );
  }
}
