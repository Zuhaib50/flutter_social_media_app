import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_social_media_app/Config/Validation_rules.dart';

class NameField extends StatefulWidget {
  const NameField({
    Key key,
  }) : super(key: key);

  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
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
        validator: (val) => validateName(val),
        onChanged: (val) {
          showTickIcon = val.length > 3;
        },
        style: TextStyle(color: Color(0xFF565fbf)),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Feather.user,
          ),
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon: getIcon(),
          labelText: 'Name',
        ));
  }
}
