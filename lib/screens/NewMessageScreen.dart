import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';

import 'MessageScreen.dart';

class NewMessageScreen extends StatefulWidget {
  @override
  _NewMessageScreenState createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {
  int select;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MessageHeader(height: height, width: width),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'To',
                    style: TextStyle(
                        color: Color(0xFF1ab7ea),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1ab7ea).withOpacity(0.3),
                      ),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Suggested',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black38,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/story2.png'),
                                  fit: BoxFit.cover)),
                        ),
                        title: Text(
                          'Jenifer_AI',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Radio(
                            activeColor: Color(0xFF1ab7ea),
                            value: index,
                            groupValue: select,
                            onChanged: (val) {
                              setState(() {
                                select = val;
                              });
                            }),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
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
              IconButton(
                  icon: Icon(AntDesign.close, color: Color(0xFF1ab7ea)),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                'New Message',
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
                    imageUrl: 'assets/Group 163.png',
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
