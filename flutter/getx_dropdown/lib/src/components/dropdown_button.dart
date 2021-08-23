import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dropdown/src/controller/dropdown_button_controller.dart';

class DropdownButtonWidget extends GetView<DropdownButtonController> {
  const DropdownButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton(
          // value: controller.index.value,
          value: controller.currentItem.value.index,
          onChanged: (int? value) {
            controller.changeDropDownMenu(value);
          },
          items: DropDownMenu.values
              .map(
                (menu) => DropdownMenuItem(
                  value: menu.index,
                  child: Text(menu.name),
                ),
              )
              .toList()
          // items: [
          //   DropdownMenuItem(
          //     value: 0,
          //     child: Text('one'),
          //   ),
          //   DropdownMenuItem(
          //     value: 1,
          //     child: Text('two'),
          //   ),
          // ],
          ),
    );
  }
}
