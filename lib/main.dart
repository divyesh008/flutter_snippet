import 'package:flutter/material.dart';

void main(){
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
        child: Center(child: Text("Hello Flutter!")),
      ),
    );
  }
}
