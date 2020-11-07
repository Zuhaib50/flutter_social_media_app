import 'dart:convert';
import 'dart:io';
import 'package:flutter_social_media_app/model/image_model.dart';
import 'package:flutter_social_media_app/screens/PostScreen.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';
import 'package:media_gallery/media_gallery.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/material.dart';
import 'package:storage_path/storage_path.dart';

class Images extends StatefulWidget {
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> with AutomaticKeepAliveClientMixin {
  // final MediaPage imagePage = await collection.getMedias(
  //   mediaType: MediaType.image,
  //   take: 500,
  // );
  // fetchImage () async{
  // final MediaPage imagePage = await collection.getMedias(
  //   mediaType: MediaType.image,
  //   take: 500,
  // );
//  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF1ab7ea)),
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                child: BaseIconImage(
                  imageUrl: 'assets/Group 234.png',
                  pressed: () {},
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: StoragePath.imagesPath,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    List<dynamic> list = json.decode(snapshot.data);

                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          ImageModel imageModel =
                              ImageModel.fromJson(list[index]);
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            height: 80,
                            child: FadeInImage(
                              image: FileImage(
                                File(imageModel.files[index]),
                              ),
                              placeholder: MemoryImage(kTransparentImage),
                              //fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    'Add Post',
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
                title: 'Next',
                pressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PostScreen()));
                },
              ),
            ),
          ),
          Container(
              height: height / 2,
              width: width,
              child: Image.asset(
                'assets/sixth.jpg',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Container(
                height: 60,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BaseIconImage(
                      imageUrl: 'assets/Group 234.png',
                      pressed: () {},
                    ),
                    BaseIconImage(
                      imageUrl: 'assets/Group 233.png',
                      pressed: () {},
                    ),
                    BaseIconImage(
                      imageUrl: 'assets/Group 235.png',
                      pressed: () {},
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
