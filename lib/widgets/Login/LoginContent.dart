import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/screens/Auth/RegisterScreen.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/EmailField.dart';
import 'package:flutter_social_media_app/widgets/common/GoogleButton.dart';
import 'package:flutter_social_media_app/widgets/common/PasswordField.dart';

class BuildContent extends StatelessWidget {
  const BuildContent({
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
            'Welcome\nBack',
            style: TextStyle(
                height: 1,
                fontSize: height / 25.9,
                fontFamily: 'BalooBhai2',
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: height * .020,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
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
                title: 'Log In',
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
          child: GoogleButton(pressed: () {}, width: width),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                text: 'Don\'t have an account?',
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Sign up',
                      style: TextStyle(fontSize: 18),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
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
