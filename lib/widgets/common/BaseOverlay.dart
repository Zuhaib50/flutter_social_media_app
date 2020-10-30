import 'package:flutter/material.dart';

class BaseOverlay extends StatelessWidget {
  final Widget child;
  BaseOverlay({this.child});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Stack(children: [
      SizedBox(
        height: height,
        width: width,
        child: child,
      ),
      Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [Colors.white.withOpacity(.1), Colors.white],
            stops: [0.3, 0.6],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
          ),
        ),
      )
    ]);
  }
}
