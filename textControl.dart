import 'package:flutter/material.dart';

import './textOutput.dart';

class TextControl extends StatefulWidget {
  final String startingText;

  TextControl({this.startingText = '"All empty souls tend toward extreme opinions."'}) {
    print('[TextControl Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
      print('[TextControl State] createState');
      return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _output = '';

  @override
  void initState() {
      print('[TextControl State] initState');
      _output = (widget.startingText);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
      print('[TextControl State] build()');
      return Column(children: [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _output = '"The worst thing about some men is that when they are not drunk they are sober."';
            });
          },
          child: Text('Tap for another Quote!'),
        ),
        ),
        TextOutput(_output)
      ],);
    }

}