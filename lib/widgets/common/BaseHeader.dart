import 'package:flutter/material.dart';

import 'BaseIconImage.dart';

class BaseHeader extends StatelessWidget {
  const BaseHeader({Key key, @required this.width, this.height})
      : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.09,
      width: width,
      decoration: BoxDecoration(
          color: Color(0xFF1ab7ea),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BaseIconImage(
              imageUrl: 'assets/Group -3.png',
              pressed: () {
                print('drawer');
              },
            ),
            Text(
              'Inskill',
              style: TextStyle(
                  fontSize: 25, color: Colors.white, fontFamily: 'Pacifico'),
            ),
            Row(
              children: [
                BaseIconImage(
                  imageUrl: 'assets/Layer 2.png',
                  pressed: () {},
                ),
                SizedBox(
                  width: 5,
                ),
                BaseIconImage(
                  imageUrl: 'assets/Group 163.png',
                  pressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
