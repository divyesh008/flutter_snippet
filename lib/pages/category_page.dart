import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {

    int _page = 0;
    GlobalKey _bottomNavigationKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: Container(
        child: Center(
          child: Text(_page.toString(), textScaleFactor: 10.0),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
      index: 0,
      backgroundColor: Colors.white,
      color: Colors.purple,
      animationCurve: Curves.easeOutSine,
      items: <Widget>[
        Icon(Icons.add, size: 30, color: Colors.white),
        Icon(Icons.list, size: 30, color: Colors.white),
        Icon(Icons.compare_arrows, size: 30, color: Colors.white),
      ],
      onTap: (index){
        //Handle button Tap
        setState(() {
          _page = index;
        });
      },
      // default Tab index

    ),
    );
  }
}
