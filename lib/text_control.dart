import 'package:flutter/material.dart';

import 'text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _text = 'Default text';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextOutput(_text),
        RaisedButton(
          child: Text('Change text'),
          onPressed: () {
            setState(() {
              _text = 'Text changed!';
            });
          },
        )
      ],
    );
  }
}
