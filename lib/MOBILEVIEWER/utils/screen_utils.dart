import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenUtils {
  ScreenUtils._();

  static double widht = 1;
  static double height = 1;

  static init(BuildContext context) {
    var size = MediaQuery.of(context).size;
    widht = size.width;
    height = size.height;
  }
}
