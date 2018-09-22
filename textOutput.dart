import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String output;

  TextOutput(this.output) {
    print('[TextOutput Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[textOutput Widget] build()');
    return Column(
          children: <Widget>[
            Text(output)
          ],
        );
  }
}
