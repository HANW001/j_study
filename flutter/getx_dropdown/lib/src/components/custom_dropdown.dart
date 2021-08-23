import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          DropDownList(),
          transition: Transition.fadeIn,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text("기본메뉴 "),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

class DropDownList extends StatelessWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}
