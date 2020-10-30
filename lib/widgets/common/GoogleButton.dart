import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key key, @required this.width, @required this.pressed})
      : super(key: key);

  final double width;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Container(
          height: 50,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google_logo.png',
                height: 20,
                width: 30,
              ),
              Text(
                'Google',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
