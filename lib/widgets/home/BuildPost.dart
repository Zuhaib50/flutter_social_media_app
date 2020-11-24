import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';

class BuildPost extends StatelessWidget {
  final ImageProvider image;
  final String name;
  final String category;
  final ImageProvider avatar;
  BuildPost({this.avatar, this.category, this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: true
                              ? LinearGradient(
                                  end: Alignment.bottomLeft,
                                  begin: Alignment.topRight,
                                  colors: [
                                      Color(0xFF1ab7ea),
                                      Color(0xFF1ab7ea)
                                    ])
                              : null,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: image,
                      radius: 18,
                    ),
                  ],
                ),
              ),

              // CircleAvatar(radius: 18, backgroundImage: avatar),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    category,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert)
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: image,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              BaseIconImage(
                imageUrl: 'assets/Group 181.png',
                pressed: () {},
              ),
              Text(
                ' 54',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Expanded(child: Container()),
              BaseIconImage(
                imageUrl: 'assets/Layer -1.png',
                pressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              BaseIconImage(
                imageUrl: 'assets/Group 173.png',
                pressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              BaseIconImage(
                imageUrl: 'assets/Layer -2.png',
                pressed: () {},
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Life is not simple as u thought!!',
                    style: TextStyle(),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '400 views',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
