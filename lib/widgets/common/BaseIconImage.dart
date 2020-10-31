import 'package:flutter/material.dart';

class BaseIconImage extends StatelessWidget {
  final Function pressed;
  final String imageUrl;
  BaseIconImage({this.pressed, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: pressed, child: Image.asset(imageUrl));
  }
}
