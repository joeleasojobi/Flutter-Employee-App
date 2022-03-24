import 'package:employee_sidenav_app/Screen/mydrawer.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Employee App")),
        ),
        drawer: MyDrawer(),
        body: Container(),
      ),
    );
  }
}
