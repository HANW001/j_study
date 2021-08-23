import 'dart:ffi';

import 'package:get/get.dart';
import 'package:getx_study/src/controller/count_controller_get.dart';

class BindingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      ConuntControllerWithGet(),
    );
  }
}
