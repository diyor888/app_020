import 'package:app_020/pages/HomePage.dart';
import 'package:app_020/pages/Page2.dart';
import 'package:app_020/pages/drawer.dart';
import 'package:app_020/pages/page1.dart';
import 'package:app_020/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
      routes: {
        Page1.id: (context) => Page1(),
        Drawer1.id:(context) => Drawer1(),
        Page2.id: (context) => Page2(),
        Page3.id: (context) => Page3(),
      },
    );
  }
}
