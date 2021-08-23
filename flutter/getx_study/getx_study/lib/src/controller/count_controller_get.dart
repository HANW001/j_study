import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ConuntControllerWithGet extends GetxController {
  static ConuntControllerWithGet get to => Get.find();

  int count = 0;
  // void increase(String id) {
  //   count++;
  //   update([id]);
  // }

  void increase() {
    count++;
    update();
  }

  void putNumber(int value) {
    count = value;
    update();
  }
}
