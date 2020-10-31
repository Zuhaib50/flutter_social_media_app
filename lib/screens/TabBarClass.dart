import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_social_media_app/screens/UserScreen.dart';

import 'HomeScreen.dart';
import 'EditProfileScreen.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabController,
                    children: <Widget>[
                      HomeScreen(),
                      HomeScreen(),
                      HomeScreen(),
                      HomeScreen(),
                      UserScreen(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                child: TabBar(
                    controller: tabController,
                    indicatorColor: Theme.of(context).primaryColor,
                    indicatorWeight: 2.0,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Theme.of(context).primaryColor,
                    labelStyle: TextStyle(fontSize: 12),
                    unselectedLabelColor: Colors.grey,
                    tabs: <Widget>[
                      Tab(
                        icon: Icon(
                          Octicons.home,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          SimpleLineIcons.fire,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Ionicons.ios_add,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          AntDesign.bells,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          MaterialIcons.person_outline,
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
