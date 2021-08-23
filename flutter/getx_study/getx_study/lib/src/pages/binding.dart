import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/count_controller_get.dart';
import 'package:getx_study/src/controller/count_controller_reactive.dart';

// class BindingPage extends StatelessWidget {
class BindingPage extends GetView<ConuntControllerWithGet> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        children: [
          GetBuilder<ConuntControllerWithGet>(builder: (_) {
            return Text(
              _.count.toString(),
              style: TextStyle(fontSize: 30),
            );
          }),
          ElevatedButton(
              onPressed: () {
                // Get.find<ConuntControllerWithGet>().increase();
                // ConuntControllerWithGet.to.increase();
                controller.increase();
              },
              child: Text('binding'))
        ],
      ),
    );
  }
}
