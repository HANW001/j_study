import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Widget _header() {
    return Positioned(
      top: Get.mediaQuery.padding.top,
      right: 0,
      left: 0,
      child: Container(
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
                  '프로필 편집',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
            Text(
              '완료',
              style: TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      bottom: 0,
      child: GestureDetector(
          onTap: () {
            print("change my background");
          },
          child: Container(
            color: Colors.transparent,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f3f3f),
      body: Container(
        child: Stack(
          children: [
            _backgroundImage(),
            _header(),
          ],
        ),
      ),
    );
  }
}
