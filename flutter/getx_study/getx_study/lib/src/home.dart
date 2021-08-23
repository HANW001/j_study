import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/pages/dependency/dependency_manage_page.dart';
import 'package:getx_study/src/pages/simple_state_manage_page.dart';

import 'pages/nomal/first.dart';
import 'pages/reactive_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트관리중'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(FirstPage());
              },
              child: Text('일반적인경우'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/first');
                // Navigator.of(context).pushNamed("/first");
              },
              child: Text('Named 경우'),
            ),
            TextButton(
              onPressed: () {
                // Get.toNamed('/next', arguments: 'wool');
                // Get.toNamed('/next', arguments: 3);
                //   Get.toNamed('/next', arguments: {'name': 'wool', 'age': '29'});
                // },
                Get.toNamed('/next', arguments: User(name: 'hanwool', age: 30));
              },
              child: Text('Argument 전달'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/user/2875');
                Get.toNamed('/user/2875?name=한울&age=22');
              },
              child: Text('동적 url 전달'),
            ),
            TextButton(
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
              child: Text('단순상태관리'),
            ),
            TextButton(
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
              child: Text('반응형상태관리'),
            ),
            TextButton(
              onPressed: () {
                Get.to(DependencyManagePage());
              },
              child: Text('의존성 관리'),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/binding');
              },
              child: Text('바인딩 관리'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}
