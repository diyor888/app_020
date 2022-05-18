import 'package:flutter/material.dart';
class Icons1 extends StatefulWidget {

  const Icons1({Key? key}) : super(key: key);

  @override
  State<Icons1> createState() => _Icons1State();
}

class _Icons1State extends State<Icons1> {
  bool test = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          test = !test;
        });
      },
      icon: test
          ? Icon(
        Icons.favorite_border,
        color: Colors.red,
      )
          : Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}
