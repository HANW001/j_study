import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String name;
  int age;
  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = ''.obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name: 'wool', age: 25).obs;
  RxList<String> list = [""].obs;
  void increase() {
    count++;
    // _double++;
    _double(424);

    nums(NUM.SECOND);
    user(User(age: 25, name: 'hanwool'));
    user.update((_user) {
      _user!.name = 'hanwool';
    });
    //  list.addAll(item);
    //  list.add(item);
    //  list.addIf(condition, tem);
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    // ever(count, (_) => print('매번호출'));
    // once(count, (_) => print('한번번호출'));
    // debounce(count, (_) => print('마지막 변경에 한번만 호출'), time: Duration(seconds: 1));
    interval(count, (_) => print('변경되고 있는동안 1초마다 호출'));
    super.onInit();
  }
}
