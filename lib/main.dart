import 'package:flutter/material.dart';
import 'package:flutter_snippets/pages/home_page.dart';
import 'package:flutter_snippets/pages/login_page.dart';
import 'package:flutter_snippets/utils/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  //Insures that widgets (everythings) are initialized
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cool App",
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}
