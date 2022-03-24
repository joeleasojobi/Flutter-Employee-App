import 'package:employee_sidenav_app/Screen/entry.dart';
import 'package:employee_sidenav_app/Screen/search.dart';
import 'package:employee_sidenav_app/Screen/view.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://media.istockphoto.com/photos/lily-isolated-picture-id183384405?b=1&k=20&m=183384405&s=170667a&w=0&h=PJRsHZZJ7Wb_CsyOk1_JHVIPgLuEfERJVdsylHxiskA="),
              ),
              accountName: Text("Joel"),
              accountEmail: Text("j@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Entry()));
            },
            leading: Icon(Icons.add),
            title: Text("Entry"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
            },
            leading: Icon(Icons.search),
            title: Text("Search"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>View()));
            },
            leading: Icon(Icons.view_agenda_rounded),
            title: Text("View"),
          )
        ],
      ),
    );
  }
}
