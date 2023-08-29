import 'package:flutter/material.dart';

class Drawables {
  Drawables._();

  static const _imagesPath = 'assets/images/';
  static const _imageExtension = '.png';

  static const dummy = 'dummy';

  static Widget getImage(
    String name, {
    Color? tint,
    double? width,
    double? height,
  }) {
    final path = '$_imagesPath$name$_imageExtension';
    if (width == null && height == null) {
      return Image.asset(path, color: tint);
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            path,
            color: tint,
          ),
        ),
      );
    }
  }
}
