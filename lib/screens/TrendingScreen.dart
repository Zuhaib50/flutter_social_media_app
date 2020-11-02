import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/HomeScreen.dart';
import 'package:flutter_social_media_app/widgets/User/HeaderSection.dart';
import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseHeader(
            width: width,
            height: height,
          ),
          Column(
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Trending',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: getPostsList(context),
          )
        ],
      ),
    );
  }
}
