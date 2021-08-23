import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/controller/dropdown_button_controller.dart';
import 'src/home.dart';
import 'src/login_page.dart';

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
      initialBinding: BindingsBuilder(() {
        Get.put(DropdownButtonController());
      }),

      getPages: [
        GetPage(
            name: '/', page: () => LoginPage(), transition: Transition.zoom),
        // GetPage(
        //     name: '/first',
        //     page: () => FirstNamedPage(),
        //     transition: Transition.zoom),
        // GetPage(
        //     name: '/second',
        //     page: () => SecondNamedPage(),
        //     transition: Transition.zoom),
        // GetPage(
        //     name: '/next', page: () => NextPage(), transition: Transition.zoom),
        // GetPage(
        //     name: '/user/:uid',
        //     page: () => UserPage(),
        //     transition: Transition.zoom),
        // GetPage(
        //   name: '/binding',
        //   page: () => BindingPage(),
        //   binding: BindingPageBinding(),
        // ),
      ],
    );
  }
}
