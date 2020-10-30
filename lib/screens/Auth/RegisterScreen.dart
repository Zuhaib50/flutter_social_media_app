import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/Auth/LoginScreen.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/BaseContainer.dart';
import 'package:flutter_social_media_app/widgets/common/BaseImage.dart';
import 'package:flutter_social_media_app/widgets/common/EmailField.dart';
import 'package:flutter_social_media_app/widgets/common/GoogleButton.dart';
import 'package:flutter_social_media_app/widgets/common/NameField.dart';
import 'package:flutter_social_media_app/widgets/common/PasswordField.dart';

class RegisterScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          BaseImage(
            overlay: false,
            height: height / 2,
            width: width,
            imageUrl: 'assets/bg.png',
          ),
          Positioned(
            top: height * .146,
            child: Container(
              width: width,
              alignment: Alignment.center,
              child: Text(
                'InSkill',
                style: TextStyle(
                    fontSize: height * .06,
                    color: Colors.white,
                    fontFamily: 'Pacifico'),
              ),
            ),
          ),
          RegisterBodyContent(width: width, height: height, formKey: formKey),
        ],
      ),
    );
  }
}

class RegisterBodyContent extends StatelessWidget {
  const RegisterBodyContent({
    Key key,
    @required this.width,
    @required this.height,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final double width;
  final double height;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: width,
      height: height / 1.45,
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: BuildRegisterContent(
              height: height, width: width, formKey: _formKey),
        ),
      ),
    );
  }
}

class BuildRegisterContent extends StatelessWidget {
  const BuildRegisterContent({
    Key key,
    @required this.height,
    @required this.width,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final double height;
  final double width;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.047,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            'New\nAccount',
            style: TextStyle(
                height: 1,
                fontSize: height / 26.9,
                fontFamily: 'BalooBhai2',
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: height * .020,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NameField(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: EmailField(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PasswordField(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Container(
              height: height / 16.9,
              width: width / 2.7,
              child: BaseColorButton(
                title: 'Sign up',
                pressed: () {
                  if (_formKey.currentState.validate()) {
                    print('ok');
                  }
                },
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            'or connect using',
            style: TextStyle(),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GoogleButton(
              pressed: () {},
              width: width,
            )),
        SizedBox(
          height: 20,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: 'Already have an account?',
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Login in',
                      style: TextStyle(fontSize: 18),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                          // navigate to desired screen
                        })
                ]),
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
