import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/AddPostScreen.dart';
import 'package:flutter_social_media_app/screens/HomeScreen.dart';
import 'package:flutter_social_media_app/screens/InterestsScreen.dart';
import 'package:flutter_social_media_app/screens/NotificationScreen.dart';
import 'package:flutter_social_media_app/screens/TrendingScreen.dart';
import 'package:flutter_social_media_app/screens/UserScreen.dart';
import 'package:flutter_social_media_app/widgets/common/DrawerScreen.dart';
import 'package:flutter_social_media_app/widgets/custom_bottom_navigation_bar.dart';

import '../main.dart';

class HomeTab extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      extendBody: true,
      body: Stack(
        children: [
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            children: <Widget>[
              HomeScreen(),
              TrendingScreen(),
              NotificationScreen(),
              UserScreen()
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
