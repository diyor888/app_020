import 'package:flutter/material.dart';
class Drawer1 extends StatefulWidget {
  static const String id = "drawer";
  const Drawer1({Key? key}) : super(key: key);

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(right: 10,left: 10),
        color: Colors.white,
        child: Column(
          children: [],
        )
      ),
    );
  }
}
