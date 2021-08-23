import 'package:flutter/cupertino.dart';

class ConuntControllerWithProvider extends ChangeNotifier {
  int count = 0;
  void increse() {
    count++;
    notifyListeners();
  }
}
