import 'dart:math';

import 'package:flutter/material.dart';

mixin BaseMixins {
  //Color
  dynamic responsive(BuildContext context, {isPhone, isSmallPhone, isTablet}) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if (width > 500) {
      return isTablet;
    } else if (width < 330) {
      return isSmallPhone;
    } else
      return isPhone;
  }

  activeColor(BuildContext context, check) {
    return check
        ? Theme.of(context).primaryColor
        : Theme.of(context).iconTheme.color;
  }
}
