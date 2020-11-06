import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/MessageScreen.dart';

import 'BaseIconImage.dart';

class BaseHeader extends StatelessWidget {
  BaseHeader({Key key, @required this.width, this.pressed, this.height})
      : super(key: key);

  final double width;
  final double height;
  Function pressed;

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
                pressed: pressed == null ? () {} : pressed),
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
                  pressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessageScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
