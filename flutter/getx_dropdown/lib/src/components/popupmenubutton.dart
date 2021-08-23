import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dropdown/src/controller/dropdown_button_controller.dart';

class PopupMenuButtonWidget extends GetView<DropdownButtonController> {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset(0, 40),
      shape: ShapeBorder.lerp(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          1),
      onSelected: (int value) {
        controller.changeDropDownMenu(value);
      },
      itemBuilder: (BuildContext context) {
        // return [PopupMenuItem(child: Text('menu1'))];
        return DropDownMenu.values
            .map(
              (menu) => PopupMenuItem(
                value: menu.index,
                child: Text(menu.name),
              ),
            )
            .toList();
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(controller.currentItem.value.name),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
    );
  }
}
