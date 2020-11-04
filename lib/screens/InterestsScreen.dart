import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';
import 'package:flutter_social_media_app/widgets/common/BaseImage.dart';
import 'package:flutter_social_media_app/widgets/common/CustomTopicsCard.dart';

class InterestScreen extends StatefulWidget {
  InterestScreen({Key key}) : super(key: key);

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          BaseImage(
            overlay: false,
            imageUrl: 'assets/interestbg.png',
            height: height,
            width: width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFF1ab7ea), width: 2),
                  borderRadius: BorderRadius.circular(30)),
              height: height,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 20),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFF1ab7ea),
                          borderRadius: BorderRadius.circular(50)),
                      child: BaseIconImage(
                        imageUrl: 'assets/Inskill.png',
                        pressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your Interest',
                      style: TextStyle(fontSize: 20, color: Color(0xFF1ab7ea)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Choose a minimum of 3',
                      style: TextStyle(fontSize: 20, color: Color(0xFF1ab7ea)),
                    ),
                  ),
                  Expanded(
                    child: CustomInterestCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Container(
                        height: height / 16.9,
                        width: width / 1.8,
                        child: BaseColorButton(
                          title: 'Next',
                          pressed: () {},
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
