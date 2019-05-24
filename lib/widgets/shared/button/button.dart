import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text('Haha'),
        onPressed: () {},
      ),
    );
  }
}
