import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/Config/Validation_rules.dart';

class NumberField extends StatefulWidget {
  const NumberField({
    Key key,
  }) : super(key: key);

  @override
  _NumberFieldState createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  bool showTickIcon = false;

  Widget getIcon() {
    if (!showTickIcon) {
      return null;
    }
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.done,
        color: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (val) => validateEmail(val),
        onChanged: (val) {
          Pattern pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          RegExp regex = new RegExp(pattern);
          setState(() {
            showTickIcon = regex.hasMatch(val);
          });
        },
        keyboardType: TextInputType.number,
        style: TextStyle(color: Color(0xFF565fbf)),
        decoration: InputDecoration(
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: getIcon(),
          labelText: 'Phone number',
        ));
  }
}
