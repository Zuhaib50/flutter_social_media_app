import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/Config/Validation_rules.dart';
import 'package:flutter_social_media_app/mixins/BaseMixins.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/BaseContainer.dart';
import 'package:flutter_social_media_app/widgets/common/BaseIconImage.dart';
import 'package:flutter_social_media_app/widgets/common/BaseImage.dart';
import 'package:flutter_social_media_app/widgets/common/NameField.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> with BaseMixins {
  List gender = ["Male", "Female"];

  String select;

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: select,
          onChanged: (value) {
            setState(() {
              print(value);
              select = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            BaseImage(
              overlay: false,
              height: height / 2.5,
              width: width,
              imageUrl: 'assets/bg4.png',
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  BaseIconImage(
                    imageUrl: 'assets/Group 183.png',
                    pressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: BaseIconImage(
                      imageUrl: 'assets/Group 255.png',
                      pressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            BaseContainer(
                height: height / 1.3,
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 110,
                    ),
                    Expanded(
                      child: Form(
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  initialValue: 'Kyle smith',
                                  validator: (val) => validateName(val),
                                  style: TextStyle(color: Color(0xFF1ab7ea)),
                                  decoration: InputDecoration(
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    labelText: 'Full Name',
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  initialValue: 'Kyle smith',
                                  validator: (val) => validateName(val),
                                  style: TextStyle(color: Color(0xFF1ab7ea)),
                                  decoration: InputDecoration(
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    labelText: 'User Name',
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  initialValue: 'Kyle smith',
                                  validator: (val) => validateName(val),
                                  style: TextStyle(color: Color(0xFF1ab7ea)),
                                  decoration: InputDecoration(
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    labelText: 'Passion',
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  initialValue: 'Kyle smith',
                                  validator: (val) => validateName(val),
                                  style: TextStyle(color: Color(0xFF1ab7ea)),
                                  decoration: InputDecoration(
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    labelText: 'Bio',
                                  )),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    child: TextFormField(
                                        initialValue: '23 years',
                                        validator: (val) => validateName(val),
                                        style:
                                            TextStyle(color: Color(0xFF1ab7ea)),
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold),
                                          labelText: 'Age',
                                        )),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      addRadioButton(0, 'Male'),
                                      addRadioButton(1, 'Female'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  initialValue: 'Kylesmith@gmail.com',
                                  validator: (val) => validateEmail(val),
                                  style: TextStyle(color: Color(0xFF1ab7ea)),
                                  decoration: InputDecoration(
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    labelText: 'Email',
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  initialValue: '123456789',
                                  validator: (val) => validateName(val),
                                  style: TextStyle(color: Color(0xFF1ab7ea)),
                                  decoration: InputDecoration(
                                    labelStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    labelText: 'Mobile No',
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Container(
                                  height: height / 16.9,
                                  width: width / 2.7,
                                  child: BaseColorButton(
                                    title: 'Save',
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
                )),
            Positioned(
              top: responsive(context, isSmallPhone: 80.0, isPhone: 100.0),
              right: responsive(context, isSmallPhone: 80.0, isPhone: 120.0),
              child: Column(
                children: [
                  Container(
                    height: responsive(context,
                        isSmallPhone: 100.0, isPhone: 120.0),
                    width: responsive(context,
                        isSmallPhone: 100.0, isPhone: 120.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('assets/face2.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    shadowColor: Color(0xFF1ab7ea),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 40,
                      width: 140,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Change',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF1ab7ea)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          BaseIconImage(
                            imageUrl: 'assets/Group 197.png',
                            pressed: () {},
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
