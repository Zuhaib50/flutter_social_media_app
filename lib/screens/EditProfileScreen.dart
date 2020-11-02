import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseContainer.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';
import 'package:flutter_social_media_app/widgets/common/BaseImage.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          BaseImage(
            overlay: false,
            height: height / 2.5,
            width: width,
            imageUrl: 'assets/bg4.png',
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                BaseIconImage(
                  imageUrl: 'assets/Group 183.png',
                  pressed: () {},
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: BaseIconImage(
                    imageUrl: 'assets/Group 255.png',
                    pressed: () {},
                  ),
                ),
              ],
            ),
          ),
          BaseContainer(height: height / 1.3, width: width),
          Positioned(
            top: 100,
            right: 120,
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/face2.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
