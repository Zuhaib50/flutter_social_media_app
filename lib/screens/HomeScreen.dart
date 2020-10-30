import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        BaseContainer(
          width: width,
          height: height / 1.5,
        )
      ],
    ));
  }
}
