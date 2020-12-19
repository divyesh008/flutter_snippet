import 'package:flutter/material.dart';
import 'package:flutter_snippets/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Cool App",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ),
  );
}
