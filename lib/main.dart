import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/HomeScreen.dart';
import 'package:flutter_social_media_app/screens/HomeTab.dart';

import 'screens/Auth/LoginScreen.dart';

PageController pageController = PageController(initialPage: 0);
int currentIndex = 0;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeTab(),
    );
  }
}
