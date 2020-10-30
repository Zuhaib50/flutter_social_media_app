import 'package:flutter/material.dart';

class BaseIconContainer extends StatelessWidget {
  final Icon icon;
  final Color color;
  final double elevation;
  Function pressed;
  BaseIconContainer({this.icon, this.pressed, this.color, this.elevation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: color == null ? Colors.white : color,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: elevation == null ? 0 : elevation,
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          child: Center(
            child: IconButton(icon: icon, onPressed: pressed),
          ),
        ),
      ),
    );
  }
}
