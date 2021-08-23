import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final name = 'wool123';
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5;

    return Scaffold(
      appBar: AppBar(
        title: Text('catalog'),
      ),
      body: Center(
        child: Container(
          child: Text('$name ui_study $days'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
