import 'package:flutter/material.dart';
import 'package:getx_dropdown/src/components/popupmenubutton.dart';

import 'components/custom_dropdown.dart';
import 'components/dropdown_button.dart';

// class App extends StatefulWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Title'),
//       ),
//       body: Column(
//         children: [
//           DropdownButton(
//             value: index,
//             onChanged: (int? value) {
//               setState(() {
//                 index = value!;
//               });
//             },
//             items: [
//               DropdownMenuItem(
//                 value: 0,
//                 child: Text('one'),
//               ),
//               DropdownMenuItem(
//                 value: 1,
//                 child: Text('two'),
//               ),
//             ],
//           ),
//           Expanded(
//               child: Center(
//             child: Text('page$index'),
//           ))
//         ],
//       ),
//     );
//   }
// }

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        children: [
          // PopupMenuButtonWidget(),
          CustomDropDownButton(),
          // DropdownButtonWidget(),
          Expanded(
              child: Center(
            child: Text('page0'),
          ))
        ],
      ),
    );
  }
}
