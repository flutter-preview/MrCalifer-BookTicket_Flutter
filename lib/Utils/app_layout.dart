import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getSceenWidth() { 
    return Get.width;
  }

  ///Get width of the screen in pixels
  static getWidth(double pixels) {
    double x = getSceenWidth()/ pixels; // Get Screen oroportion
    return getSceenWidth() / x;
  }

  ///Get height of the screen in pixels
  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels; // Get Screen oroportion
    return getScreenHeight() / x;
  }
}
