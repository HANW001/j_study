import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lazyput'),
      ),
      body: ElevatedButton(
        child: Text('lazy'),
        onPressed: () {
          Get.find<DependencyController>().increase();
        },
      ),
    );
  }
}
