import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/pages/named/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.offNamed('/second');
              },
              child: Text('다음페이지 이동'),
            )
          ],
        ),
      ),
    );
  }
}
