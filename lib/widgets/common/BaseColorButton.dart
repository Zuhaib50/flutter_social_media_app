import 'package:flutter/material.dart';

class BaseColorButton extends StatelessWidget {
  final Function pressed;
  final String title;
  BaseColorButton({this.pressed, this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: Color(0xFF1ab7ea),
      textColor: Colors.white,
      onPressed: pressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
