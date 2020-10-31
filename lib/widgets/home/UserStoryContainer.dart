import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/mixins/BaseMixins.dart';

class UserStoryContainer extends StatelessWidget with BaseMixins {
  final ImageProvider image;
  final bool newStory;
  final double height;
  final double width;

  UserStoryContainer({this.image, this.height, this.width, this.newStory});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                width: responsive(
                  context,
                  isSmallPhone: 60.0,
                  isPhone: 80.0,
                ),
                height: responsive(
                  context,
                  isSmallPhone: 60.0,
                  isPhone: 80.0,
                ),
                decoration: BoxDecoration(
                    gradient: newStory
                        ? LinearGradient(
                            end: Alignment.bottomLeft,
                            begin: Alignment.topRight,
                            colors: [Color(0xFF1ab7ea), Color(0xFF1ab7ea)])
                        : null,
                    borderRadius: BorderRadius.circular(50)),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: responsive(
                  context,
                  isSmallPhone: height * 0.05,
                  isPhone: 37.0,
                ),
                //height * 0.05,
              ),
              CircleAvatar(
                backgroundImage: image,
                radius: responsive(
                  context,
                  isSmallPhone: height * 0.045,
                  isPhone: 33.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('Maria'),
        ))
      ],
    );
  }
}
