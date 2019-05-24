import 'package:flutter/cupertino.dart';

class Button extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  Button({
    Key key,
    @required this.text,
    @required this.onPressed,
  })  : assert(text != ""),
        super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        child: Text(widget.text),
        onPressed: widget.onPressed,
      ),
    );
  }
}
