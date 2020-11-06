import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/model/data.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';

import 'ChatScreen.dart';

class MessageScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MessageScreen> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BaseIconImage(
                    imageUrl: 'assets/Group 183.png',
                    pressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Messages",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF1ab7ea),
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.edit,
                    color: Color(0xFF1ab7ea),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: getBody(height, width)),
        ],
      ),
    );
  }

  Widget getBody(height, width) {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: TextField(
            cursorColor: Colors.black,
            controller: _searchController,
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF1ab7ea),
                ),
                hintText: "Search",
                border: InputBorder.none),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Messages',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          children: List.generate(userMessages.length, (index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 75,
                      child: Stack(
                        children: <Widget>[
                          userMessages[index]['story']
                              ? Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.blue, width: 3)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  userMessages[index]['img']),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              userMessages[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                          userMessages[index]['online']
                              ? Positioned(
                                  top: 48,
                                  left: 52,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 3)),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userMessages[index]['name'],
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 135,
                          child: Text(
                            userMessages[index]['message'] +
                                " - " +
                                userMessages[index]['created_at'],
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.8)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        )
      ],
    ));
  }
}
