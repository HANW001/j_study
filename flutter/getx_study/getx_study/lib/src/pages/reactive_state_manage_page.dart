import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/count_controller_get.dart';
import 'package:getx_study/src/controller/count_controller_provider.dart';
import 'package:getx_study/src/controller/count_controller_reactive.dart';
import 'package:provider/provider.dart';

import 'state/with_getx.dart';
import 'state/with_provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GetX',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Obx(
              () => Text(
                '${Get.find<CountControllerWithReactive>().count.value}',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text(
                '5로 변경',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
