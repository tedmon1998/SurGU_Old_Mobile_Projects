import 'package:flutter/material.dart';

import 'palette.dart';

const fontFamily = 'Montserrat';

class Styles {
  Styles._();

  static const s12BlackW400 = TextStyle(
    color: Palette.black,
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
  );

  static const s14BlackW500 = TextStyle(
    color: Palette.black,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
  );
}
