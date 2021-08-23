import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/home.dart';
import 'package:getx_study/src/pages/named/first.dart';
import 'package:getx_study/src/pages/named/second.dart';

import 'src/binding/binding_page.dart';
import 'src/controller/count_controller_get.dart';
import 'src/controller/dependency_controller.dart';
import 'src/pages/binding.dart';
import 'src/pages/next.dart';
import 'src/pages/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/first': (context) => FirstNamedPage(),
      //   '/second': (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: '/', page: () => Home(), transition: Transition.zoom),
        GetPage(
            name: '/first',
            page: () => FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/second',
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: '/next', page: () => NextPage(), transition: Transition.zoom),
        GetPage(
            name: '/user/:uid',
            page: () => UserPage(),
            transition: Transition.zoom),
        GetPage(
          name: '/binding',
          page: () => BindingPage(),
          binding: BindingPageBinding(),
        ),
      ],
    );
  }
}
