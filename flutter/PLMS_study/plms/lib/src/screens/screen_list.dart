import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen_punch.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  Widget _header() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              Text(
                'Punch Issue',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            Get.to(PunchScreen());
          },
          child: Text('Add Punch Issue'),
        ),
        SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Upload Photos'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f3f3f),
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            _button(),
          ],
        ),
      ),
    );
  }
}
