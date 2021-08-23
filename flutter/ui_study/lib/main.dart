import 'package:flutter/material.dart';
import 'package:ui_study/pages/home_page.dart';
import 'package:ui_study/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_study/utils/routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red
      ),
      // initialRoute: "/home",
      routes: {
        "/": (context) => new LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}


