import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/widgets/common/BaseContainer.dart';

import 'LoginContent.dart';

class LoginBodyContent extends StatelessWidget {
  const LoginBodyContent({
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
      height: height / 1.65,
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: BuildContent(height: height, width: width, formKey: _formKey),
        ),
      ),
    );
  }
}
