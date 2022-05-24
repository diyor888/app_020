import 'package:app_020/pages/Page2.dart';
import 'package:app_020/pages/page1.dart';
import 'package:app_020/pages/page3.dart';
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
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_3.png"),
                ),
              ),
            ),
            Divider(
              height: 2,
              color: Colors.lightBlue,
            ),
            ListTile(
              leading: Icon(Icons.home_outlined,color: Colors.blue,),
              title: Text('My Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Page1.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag_outlined,color: Colors.blue,),
              title: Text('My Bag'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Page2.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart,color: Colors.blue,),
              title: Text('My Shop'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Page3.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border,color: Colors.blue,),
              title: Text('Favorite'),
              onTap: () {},
            ),
          ],
        ),
      ),

    );
  }
}
