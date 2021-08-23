import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/count_controller_get.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  Widget _button()
  // Widget _button(String id)
  {
    return TextButton(
      onPressed: () {
        // Get.find<ConuntControllerWithGet>().increase(id);
        Get.find<ConuntControllerWithGet>().increase();
      },
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GetX',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          GetBuilder<ConuntControllerWithGet>(
              // id: 'first',
              builder: (controller) {
            return Text(
              '${controller.count}',
              style: TextStyle(
                fontSize: 50,
              ),
            );
          }),
          GetBuilder<ConuntControllerWithGet>(
              // id: 'second',
              builder: (controller) {
            return Text(
              '${controller.count}',
              style: TextStyle(
                fontSize: 50,
              ),
            );
          }),
          _button(),
          TextButton(
            onPressed: () {
              // Get.find<ConuntControllerWithGet>().increase(id);
              Get.find<ConuntControllerWithGet>().putNumber(5);
            },
            child: Text(
              '5로 변경',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          // _button('first'),
          // _button('second'),
          // TextButton(
          //   onPressed: () {
          //     Get.find<ConuntControllerWithGet>().increase();
          //   },
          //   child: Text(
          //     '+',
          //     style: TextStyle(
          //       fontSize: 30,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
