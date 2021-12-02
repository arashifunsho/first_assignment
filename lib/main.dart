import 'dart:math';

import 'package:flutter/material.dart';
import './textcontrol.dart';


void main() => runApp(App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int randIndex=0;
  void _changeText() {
    setState(() {
      var random = Random();
      randIndex = random.nextInt(5);
      TextControl(
        callback: _changeText,
        textIndex: randIndex,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment App'),
        ),
        body: TextControl(callback: _changeText,textIndex: randIndex,),
      ),
    );
  }
}
