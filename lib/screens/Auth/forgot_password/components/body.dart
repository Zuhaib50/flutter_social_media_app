import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseColorButton.dart';
import 'package:flutter_social_media_app/widgets/common/BaseContainer.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.09,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xFF1ab7ea),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                        )),
                    Spacer(),
                    Text(
                      'Inskill',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Pacifico'),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 30,
                    ),
                    Container()
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please enter your email and we will send \nyou a link to return to your account",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.1),
            ForgotPassForm(),
          ],
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: _formKey,
      child: BaseContainer(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (newValue) => email = newValue,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            //SizedBox(height: height * 0.1),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  'Or reset through mobile number',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            BaseColorButton(
              title: "Continue",
              pressed: () {
                if (_formKey.currentState.validate()) {
                  // Do what you want to do
                }
              },
            ),
            SizedBox(height: height * 0.1),
          ],
        ),
      ),
    );
  }
}
