import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildA(),
        _buildB(),
        _buildC(),
      ],
    );
  }

  Widget _buildA() {
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
            Text("Catagory"),
          ],
        )
      ],
    );
  }

  Widget _buildB() {
    return Container(
      child: Text('two'),
    );
  }

  Widget _buildC() {
    return Container(
      child: Text('three'),
    );
  }
}
