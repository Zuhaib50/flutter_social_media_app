import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/Login/LoginBodyContent.dart';

import 'package:flutter_social_media_app/widgets/common/BaseImage.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        BaseImage(
          overlay: false,
          height: height / 2,
          width: width,
          imageUrl: 'assets/bg.png',
        ),
        Positioned(
          top: height * .146,
          child: Container(
            width: width,
            alignment: Alignment.center,
            child: Text(
              'InSkill',
              style: TextStyle(
                  fontSize: height * .06,
                  color: Colors.white,
                  fontFamily: 'Pacifico'),
            ),
          ),
        ),
        LoginBodyContent(width: width, height: height, formKey: formKey),
      ],
    ));
  }
}
