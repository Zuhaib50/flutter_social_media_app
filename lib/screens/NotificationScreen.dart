import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';
import 'package:flutter_social_media_app/widgets/common/BaseImage.dart';
import 'package:flutter_social_media_app/widgets/common/DrawerScreen.dart';

class NotificationScreen extends StatelessWidget {
  var scaffoldKey2 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey2,
      drawer: DrawerScreen(),
      body: Column(
        children: [
          BaseHeader(
            width: width,
            height: height,
            pressed: () {
              print('dawer');
              scaffoldKey2.currentState.openDrawer();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            child: Container(
              height: height,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Rectangle 132.png'),
                            fit: BoxFit.fill)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Today',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        NotificationWidget(),
                        NotificationWidget(),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: height / 2.2,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle 133.png'),
                              fit: BoxFit.fill)),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'Yesterday',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            NotificationWidget(),
                            NotificationWidget(),
                            NotificationWidget()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/face2.jpg')),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Jenifer_AI',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '4 hours ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Text(
              'starts following tou',
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
