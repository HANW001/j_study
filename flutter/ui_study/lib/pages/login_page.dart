import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_study/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'asset/images/login.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "welcome $name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter UserName', labelText: 'UserName'),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter Password', labelText: 'Password'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton? 50: 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton
                      ?Icon(
                    Icons.done,
                    color: Colors.white)
                    : Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton
                    //     ?BoxShape.circle:
                    //   BoxShape.rectangle,
                    borderRadius:
                    BorderRadius.circular(changeButton? 50:10),

                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: Text('Login'),
              //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              // )
            ],
          ),
        ));
  }
}

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset(
//                 'asset/images/login.png',
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 "welcome",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration: InputDecoration(
//                           hintText: 'Enter UserName', labelText: 'UserName'),
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           hintText: 'Enter Password', labelText: 'Password'),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, MyRoutes.homeRoute);
//                 },
//                 child: Text('Login'),
//                 style: TextButton.styleFrom(minimumSize: Size(150, 40)),
//               )
//             ],
//           ),
//         ));
//   }
// }
