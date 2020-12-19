import 'package:flutter/material.dart';
import 'package:flutter_snippets/widgets/drawer.dart';
import 'package:flutter_snippets/utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var response = await http.get(url);
    data = jsonDecode(response.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cool App Chap-5"),
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID - ${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          tooltip: 'Edit',
          child: Icon(Icons.refresh)),
    );
  }
}
