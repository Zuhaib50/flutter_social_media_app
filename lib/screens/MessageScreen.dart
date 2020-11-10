import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/model/data.dart';
import 'package:flutter_social_media_app/screens/NewMessageScreen.dart';
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
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF1ab7ea).withOpacity(0.6),
          child: Icon(
            Icons.edit,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewMessageScreen()));
          },
        ),
        body: Column(
          children: [
            MessageHeader(height: height, width: width),
            Expanded(child: getBody(height, width)),
          ],
        ),
      ),
    );
  }

  Widget getBody(height, width) {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      children: <Widget>[
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          shadowColor: Color(0xFF1ab7ea),
          elevation: 5,
          child: Container(
            width: width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 5),
              child: TextField(
                cursorColor: Colors.black,
                controller: _searchController,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF1ab7ea),
                    ),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color(0xFF1ab7ea), fontSize: 18),
                    border: InputBorder.none),
              ),
            ),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ChatDetailPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        userMessages[index]['img']),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                userMessages[index]['name'],
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),

                              //Spacer(),
                              Text(
                                userMessages[index]['created_at'],
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 135,
                            child: Text(
                              userMessages[index]['message'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black.withOpacity(0.8)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
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

class MessageHeader extends StatelessWidget {
  const MessageHeader({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      shadowColor: Color(0xFF1ab7ea),
      elevation: 10,
      child: Container(
        height: height * 0.09,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BaseIconImage(
                imageUrl: 'assets/Group 183.png',
                pressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Message',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF1ab7ea),
                ),
              ),
              Row(
                children: [
                  BaseIconImage(
                    imageUrl: 'assets/Layer 2.png',
                    pressed: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  BaseIconImage(
                    imageUrl: 'assets/Group 197.png',
                    pressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessageScreen()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
