import 'package:flutter/material.dart';

import './textControl.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Assignment One: Push the Button!'),
          ),
          body: TextControl()
          ),
      );
    }
}