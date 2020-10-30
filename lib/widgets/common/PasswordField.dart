import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_social_media_app/Config/Validation_rules.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) => validatePassword(value),
        obscureText: hidePass,
        style: TextStyle(color: Color(0xFF565fbf)),
        decoration: InputDecoration(
          prefixIcon: Icon(SimpleLineIcons.lock),
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidePass = !hidePass;
              });
            },
            icon: Icon(Ionicons.md_eye_off, color: Colors.black),
          ),
          labelText: 'Password',
        ));
  }
}
