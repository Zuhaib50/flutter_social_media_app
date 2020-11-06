import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';
import 'package:flutter_social_media_app/widgets/common/DrawerScreen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'EditProfileScreen.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  var scaffoldKey2 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawerScreen(),
      key: scaffoldKey2,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _getPostsList(context),
          Positioned(
            top: 0,
            child: Container(
              // padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
              height: 365,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 15,
                    offset: Offset(0, 5))
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BaseHeader(
                    width: width,
                    height: height,
                    pressed: () {
                      print('dawer');
                      scaffoldKey2.currentState.openDrawer();
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      GetAvatar(),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kyle Smith',
                            style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF1ab7ea),
                                fontWeight: FontWeight.w500),
                          ),
                          Text('Fashion',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              )),
                          Text('Living my dreams!!',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          Text('KyleS.123@gmail.com',
                              style: TextStyle(
                                  color: Color(0xFF1ab7ea),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Interests',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Music',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Text('Fashion',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Text('Science',
                              style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.black,
                  ),
                  getUserStats(),
                  Divider(
                    color: Colors.black,
                  )

                  // SizedBox(
                  //   height: 10,
                  // ),
                  // _getUserBtns(),
                ],
              ),
            ),
          ),
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

getUserStats() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border(right: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
            children: <Widget>[
              Text(
                '317',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Posts', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border(right: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
            children: <Widget>[
              Text(
                '1.2M',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Motivators', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Text(
              '478',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Motivets', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    ],
  );
}

class GetAvatar extends StatelessWidget {
  const GetAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()));
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF1ab7ea).withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(6, 4), // changes position of shadow
                  ),
                ],
                image: DecorationImage(image: AssetImage('assets/face2.jpg')),
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ],
    );
  }
}

// class GetAvatar extends StatelessWidget {
//   const GetAvatar({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: AlignmentDirectional.center,
//       children: <Widget>[
//         InkWell(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => EditProfileScreen()));
//           },
//           child: Container(
//             width: 100,
//             height: 100,
//             decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0xFF1ab7ea).withOpacity(0.3),
//                     spreadRadius: 2,
//                     blurRadius: 7,
//                     offset: Offset(6, 4), // changes position of shadow
//                   ),
//                 ],
//                 image: DecorationImage(image: AssetImage('assets/face2.jpg')),
//                 borderRadius: BorderRadius.circular(50)),
//           ),
//         ),
//       ],
//     );
//   }
// }
