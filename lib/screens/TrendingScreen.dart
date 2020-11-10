import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/HomeScreen.dart';
import 'package:flutter_social_media_app/widgets/User/HeaderSection.dart';
import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';
import 'package:flutter_social_media_app/widgets/common/DrawerScreen.dart';
import 'package:flutter_social_media_app/widgets/home/BuildPost.dart';

class TrendingScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerScreen(),
        body: Column(
          children: [
            BaseHeader(
              width: width,
              height: height,
              pressed: () {
                scaffoldKey.currentState.openDrawer();
              },
            ),
            Expanded(
              child: CustomScrollView(slivers: <Widget>[
                SliverAppBar(
                    iconTheme: IconThemeData(color: Colors.transparent),
                    backgroundColor: Colors.white,
                    expandedHeight: height / 2.0,
                    // pinned: true,
                    floating: false,
                    elevation: 1,
                    snap: false,
                    actions: <Widget>[],
                    flexibleSpace: new FlexibleSpaceBar(
                      background: buildColumnbg(width, height),
                    )),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return BuildPost(
                        image: AssetImage('assets/third.jpg'),
                        name: 'Jennifer_Cole',
                        category: 'Photographer',
                        avatar: AssetImage('assets/story.png'),
                      );
                    },
                    childCount: 3,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumnbg(double width, double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrendingCategories(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Trending',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}

class TrendingCategories extends StatelessWidget {
  const TrendingCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 202.png',
                pressed: () {},
              ),
            ),
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 203.png',
                pressed: () {},
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 204.png',
                pressed: () {},
              ),
            ),
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 205.png',
                pressed: () {},
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 206.png',
                pressed: () {},
              ),
            ),
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 207.png',
                pressed: () {},
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 203.png',
                pressed: () {},
              ),
            ),
            Expanded(
              child: BaseIconImage(
                imageUrl: 'assets/Group 209.png',
                pressed: () {},
              ),
            )
          ],
        )
      ],
    );
  }
}
