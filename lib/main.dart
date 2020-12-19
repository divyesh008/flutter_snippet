import 'package:flutter/material.dart';
import 'package:flutter_snippets/pages/home_page.dart';
import 'package:flutter_snippets/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Cool App",
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}
