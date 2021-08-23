import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/dependency_controller.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('put'),
      ),
      body: ElevatedButton(
        child: Text('lazy'),
        onPressed: () {
          print(Get.find<DependencyController>().hashCode);
          Get.find<DependencyController>().increase();
        },
      ),
    );
  }
}
