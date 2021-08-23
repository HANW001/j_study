import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plms/src/pages/page_one.dart';
import 'package:plms/src/pages/page_two.dart';
import 'package:plms/src/pages/page_three.dart';
import 'package:plms/src/screens/screen_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList(),
    );
  }
}

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PageOne(),
        PageTwo(),
        PageThree(),
      ],
    );
  }
}
