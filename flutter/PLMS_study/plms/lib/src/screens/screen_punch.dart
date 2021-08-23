import 'package:flutter/material.dart';
import 'package:plms/src/components/dropdown_button.dart';

class PunchScreen extends StatelessWidget {
  const PunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildA(),
          _buildB(),
          _buildC(),
        ],
      ),
    );
  }

  Widget _buildA() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(),
        _texttitle('General Infomation'),
        SizedBox(
          height: 20,
        ),
        _catalog('Catagory'),
        _catalog('System'),
        _catalog('Sub-system'),
        _catalog('Unit'),
        _catalog('Area'),
        Row(
          children: [],
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

  Widget _header() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              Text(
                'Punch Issue',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _texttitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.indigo,
      ),
    );
  }

  Widget _catalog(String title) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Text(title),
        ),
        SizedBox(
          width: 200,
          child: DropdownButtonWidget(),
        ),
      ],
    );
  }
}
