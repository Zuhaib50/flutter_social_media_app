import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              alignment: Alignment.center,
              height: height * 0.09,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xFF1ab7ea),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BaseIconImage(
                      imageUrl: 'assets/Group 268.png',
                      pressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'New Post',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: BaseColorButton(
                  title: 'Post',
                  pressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostScreen()));
                  },
                ),
              ),
            ),
            Container(
                height: height / 2.5,
                width: width,
                child: Image.asset(
                  'assets/sixth.jpg',
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Container(
                  height: 50,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.bookmark,
                          color: Color(0xFF1ab7ea),
                        ),
                        border: InputBorder.none,
                        hintText: "Tag people",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Container(
                  height: 50,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.location_on,
                          color: Color(0xFF1ab7ea),
                        ),
                        border: InputBorder.none,
                        hintText: "Add location",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  height: 130,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add description",
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
