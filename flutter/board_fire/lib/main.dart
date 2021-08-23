import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello world"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              child: Text("create button",style: TextStyle(color : Colors.white)),
              onPressed: (){
                //클릭시 데이터를 추가해준다.
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("read button", style: TextStyle(color : Colors.white)),
              onPressed: (){
                //클릭시 데이터를 읽어준다
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("update button", style: TextStyle(color : Colors.white)),
              onPressed: (){
                //클릭시 데이터를 갱신해준다.
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text("delete button", style: TextStyle(color : Colors.white)),
              onPressed: (){
                //클릭시 데이터를 삭제해 준다.
              },
            ),
          ],
        ),
      ),
    );
  }
}