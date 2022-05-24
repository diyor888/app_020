import 'package:app_020/pages/drawer.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  static const String id = "page3";

  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  Color home = Color(0xFF0dd7df);
  Color text = Color(0xFF363b64);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Color(0xffC2EAFA),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
        ],
      ),
      backgroundColor: Color(0xFFD5F0F7),
      drawer: Drawer1(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "My Bag",
                      style: TextStyle(
                        color: text,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Check and Pay your shoes",
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              _builder(link: "assets/images/img_3.png"),
              _builder(link: "assets/images/img_3.png"),
              _builder(link: "assets/images/img_5.png"),
              _builder(link: "assets/images/img_5.png"),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                margin: EdgeInsets.only(top: 40, bottom: 40),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFD5F0F7),
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jami: ",
                        style: TextStyle(fontSize: 18, color: text),
                      ),
                      Text(
                        "\$jami",
                        style: TextStyle(fontSize: 18, color: text),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                margin: EdgeInsets.only(bottom: 40, left: 80, right: 80),
                height: 75,
                decoration: BoxDecoration(
                  color: home,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: text, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builder({link}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Lorem ipsum",
                        style: TextStyle(fontSize: 20, color: text),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "\$Narx",
                        style: TextStyle(fontSize: 20, color: text),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset(link),
        ],
      ),
    );
  }
}
