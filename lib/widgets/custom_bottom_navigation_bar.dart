import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_social_media_app/widgets/custom_nav_item.dart';

import '../main.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  setPage() {
    setState(() {
      pageController.jumpToPage(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Positioned(
                bottom: 30,
                child: Image.asset(
                  'assets/Union 5.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                )),
            Positioned(
              bottom: 35,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomNavItem(
                    setPage: setPage,
                    icon: Octicons.home,
                    id: 0,
                    title: 'Home',
                  ),
                  CustomNavItem(
                    setPage: setPage,
                    icon: SimpleLineIcons.fire,
                    id: 1,
                    title: 'Trending',
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  CustomNavItem(
                    setPage: setPage,
                    icon: AntDesign.bells,
                    id: 2,
                    title: 'Notification',
                  ),
                  CustomNavItem(
                    setPage: setPage,
                    icon: MaterialIcons.person_outline,
                    id: 3,
                    title: 'User',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
