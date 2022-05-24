import 'package:app_020/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'items.dart';

class Page1 extends StatefulWidget {
  static const String id = "page1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 0,
      child: Scaffold(
        backgroundColor: Color(0xffC2EAFA),
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
        drawer: Drawer1(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              child: Column(
                children: [
                  //qidirish
                  Container(
                    color: Color(0xffC2EAFA),
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Container(
                      margin:
                      EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 30),
                      padding: EdgeInsets.only(left: 10,right: 5,top: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 20,color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "Loren ipsum",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //categotiya
                  Container(
                    color: Color(0xffC2EAFA),
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                              color: Color(0xff022765),
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  //karasofkalar
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        _items1(
                          image1: "assets/images/img_4.png",
                          narx1: "102",
                        ),
                        _items1(
                          image1: "assets/images/img_4.png",
                          narx1: "102",
                        ),
                        _items1(
                          image1: "assets/images/img_4.png",
                          narx1: "102",
                        ),
                        _items1(
                          image1: "assets/images/img_4.png",
                          narx1: "102",
                        ),
                        _items1(
                          image1: "assets/images/img_4.png",
                          narx1: "102",
                        ),
                        _items1(
                          image1: "assets/images/img_4.png",
                          narx1: "102",
                        ),
                      ],
                    ),
                  ),
                  //nav bar
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: GNav(
          tabBorderRadius: 20,
          onTabChange: (int index){
          },
          backgroundColor: Colors.white,
          color: Colors.black54,
          activeColor: Colors.blue,
          // tabBackgroundColor: Colors.grey.shade800,
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
            ),
            GButton(
              icon: Icons.message,
            ),
            GButton(
              icon: Icons.favorite_border,
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
            ),
            GButton(
              icon: Icons.account_circle_rounded,
            ),
          ],
        ),
      ),
    );
  }

  Widget _items1({image1, narx1}) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image1),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.045,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.015),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$" + narx1,
                  style: TextStyle(fontSize: 16),
                ),
                Icons1(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, bottom: 15),
            height: MediaQuery.of(context).size.height * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike krasofka Loren Ipsum",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
