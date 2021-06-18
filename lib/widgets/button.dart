import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class buttonFlashcard extends HookWidget {
  buttonFlashcard(this.text, this.color, this.onTap, this.icon);

  final String text;
  final Color color;
  final Function onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      margin: EdgeInsets.all(24.0),
      child: ElevatedButton.icon(
          onPressed: () => onTap(),
          icon: icon,
          label: Text(
            text,
            style: TextStyle(fontSize: 32.0),
          ),
          style: ElevatedButton.styleFrom(
              primary: color, onPrimary: Colors.black)),
    );
  }
}
