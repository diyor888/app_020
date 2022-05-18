import 'package:app_020/pages/items.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String id = "homepage";

  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool test = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC2EAFA),
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(color: Color(0xff022765), fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffC2EAFA),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/img_1.png"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 15, left: 15, bottom: 10, top: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            _items(
                image1: "assets/images/img_4.png",
                image2: "assets/images/img_3.png",
                narx1: "102",
                narx2: "105"),
            _items(
                image1: "assets/images/img_4.png",
                image2: "assets/images/img_3.png",
                narx1: "102",
                narx2: "105"),
            _items(
                image1: "assets/images/img_4.png",
                image2: "assets/images/img_3.png",
                narx1: "102",
                narx2: "105"),
            _items(
                image1: "assets/images/img_4.png",
                image2: "assets/images/img_3.png",
                narx1: "102",
                narx2: "105"),
          ],
        ),
      ),
    );
  }

  Widget _items({image1, image2, narx1, narx2}) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
          ),
          Container(
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
          ),
        ],
      ),
    );
  }

  Widget _icon() {
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
