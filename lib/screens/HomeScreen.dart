import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/mixins/BaseMixins.dart';
import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';
import 'package:flutter_social_media_app/widgets/home/BuildPost.dart';
import 'package:flutter_social_media_app/widgets/home/NewStoryButton.dart';
import 'package:flutter_social_media_app/widgets/home/UserStoryContainer.dart';

class HomeScreen extends StatelessWidget with BaseMixins {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height / 3.56,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BaseHeader(
                  width: width,
                  height: height,
                ),
                SizedBox(
                  height: 10,
                ),
                BuildStoryContainer(
                  height: height,
                  width: width,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              height: responsive(context,
                  isSmallPhone: height / 1.33, isPhone: height / 1.35),
              child: GetPostList(),
            ),
          )
        ],
      ),
    );
  }
}

class BuildStoryContainer extends StatelessWidget with BaseMixins {
  const BuildStoryContainer({
    this.height,
    this.width,
    Key key,
  }) : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      height: responsive(context, isSmallPhone: 85.0, isPhone: 105.0
          //height * .15,
          ),

      // height * .15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          NewStoryButton(
            height: height,
            width: width,
          ),
          UserStoryContainer(
              height: height,
              width: width,
              image: AssetImage('assets/story2.png'),
              newStory: true),
          UserStoryContainer(
              height: height,
              width: width,
              image: AssetImage('assets/story3.png'),
              newStory: true),
          UserStoryContainer(
              height: height,
              width: width,
              image: AssetImage('assets/story4.png'),
              newStory: true),
          UserStoryContainer(
              height: height,
              width: width,
              image: AssetImage('assets/story5.png'),
              newStory: false),
        ],
      ),
    );
  }
}

getPostsList(context) {
  return GetPostList();
}

class GetPostList extends StatelessWidget {
  const GetPostList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(top: 2),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          BuildPost(
            image: AssetImage('assets/third.jpg'),
            name: 'Jennifer_Cole',
            category: 'Photographer',
            avatar: AssetImage('assets/story.png'),
          ),
          BuildPost(
            image: AssetImage('assets/second.jpg'),
            name: 'Peter_Range',
            category: 'Model',
            avatar: AssetImage('assets/story2.png'),
          ),
          BuildPost(
            image: AssetImage('assets/first.jpg'),
            name: 'SmartFox',
            category: 'Actor',
            avatar: AssetImage('assets/story3.png'),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
