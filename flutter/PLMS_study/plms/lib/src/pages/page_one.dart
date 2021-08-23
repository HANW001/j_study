import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int index = 0;
  late double headerTopZone;
  @override
  Widget build(BuildContext context) {
    headerTopZone = Get.mediaQuery.padding.top + AppBar().preferredSize.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'General Infomation',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("Catagory"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: _Dropdown(),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("System"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: _Dropdown(),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("Sub-system"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: _Dropdown(),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("Unit"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: _Dropdown(),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("Area"),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: _Dropdown(),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text("Tag Number"),
            ),
            SizedBox(
              child: Row(
                children: [TextField()],
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _Dropdown() {
    return DropdownButton(
        isExpanded: true,
        value: index,
        onChanged: (int? value) {
          setState(() {
            index = value!;
          });
        },
        items: [
          DropdownMenuItem(
            value: 0,
            child: Text('메뉴'),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('메뉴1'),
          ),
        ]);
  }
}
