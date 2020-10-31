import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/User/HeaderSection.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _getPostsList(context),
          HeaderSection(
            width: width,
            height: height,
          )
        ],
      ),
    );
  }
}

_getPostsList(context) {
  return Container(
      color: Colors.white,
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.fromLTRB(10, 365, 10, 110),
        crossAxisCount: 4,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return _getPost(
              context: context, image: AssetImage('assets/second.jpg'));
        },
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ));
}

_getPost({context, ImageProvider image}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: MediaQuery.of(context).size.width * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: image,
          ),
          borderRadius: BorderRadius.circular(20)),
    ),
  );
}
