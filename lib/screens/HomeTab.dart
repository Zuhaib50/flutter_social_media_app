import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/AddPostScreen.dart';
import 'package:flutter_social_media_app/screens/HomeScreen.dart';
import 'package:flutter_social_media_app/screens/TrendingScreen.dart';
import 'package:flutter_social_media_app/screens/UserScreen.dart';
import 'package:flutter_social_media_app/widgets/custom_bottom_navigation_bar.dart';

import '../main.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      extendBody: true,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          HomeScreen(),
          TrendingScreen(),
          HomeScreen(),
          UserScreen()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddPostScreen()));
          },
          child: Icon(
            Icons.add,
            color: Color(0xFF1ab7ea),
          ),
          elevation: 2.0,
        ),
      ),
    );
  }
}
