import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Cool App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cool App"),
      ),
      body: Container(
        color: Colors.indigoAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
