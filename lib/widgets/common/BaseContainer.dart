import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final Color color;
  BaseContainer({this.child, this.height, this.color, this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color == null ? Colors.white : color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: child,
      ),
    );
  }
}
