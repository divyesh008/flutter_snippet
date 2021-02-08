import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Json White"),
          accountEmail: Text("json@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1591258739299-5b65d5cbb235?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWFuJTIwZmFjZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: ()=>Navigator.pushNamed(context, "/home"),
        ),
        ListTile(
          leading: Icon(Icons.category),
          title: Text("Category"),
          trailing: Icon(Icons.send),
          onTap: ()=> Navigator.pushNamed(context, "/category"),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          onTap: () => Navigator.pushNamed(context, "/login"),
        )
      ],
    ));
  }
}
