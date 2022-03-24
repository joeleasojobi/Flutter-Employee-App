 import 'package:employee_sidenav_app/Screen/mydrawer.dart';
import 'package:flutter/material.dart';


class View extends StatelessWidget {

  var name=["Aswin","Babu","Christin","Dona","Ebin","Fukuru","Gopal","Hari","Irene","Joel"];
  var code=["001","002","003","004","005","006","007","008","009","010"];
  var design=["Level1","Level2","Level3","Level2","Level1","Level3","Level3","Level1","Level3","Level4",];
  var salary=["2.5LPA","3.5LPA","4.5LPA","3.4LPA","2.4LPA","4.0LPA","4.5LPA","2.8LPA","4.6LPA","6.0LPA",];
  var mobile=["1234567890","9087654321","2345678901","345678901","4567890123","5678901234","6789012345","7890123456","8901234567","9012345678"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employee App"),
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  leading: Icon(Icons.person,color: Colors.black),
                  trailing: Icon(Icons.transit_enterexit,color: Colors.blue),
                  title: Text("Name: "+name[index]),
                  subtitle: Text("Employee Code: "+code[index]+"\n"+"Employee Designation: "+design[index]+"\n"+"Salary: "+salary[index]+"\n"+"Mobile No:"+mobile[index]),


                )
                ,
              );
            }
        ),
      ),
    );
  }
}
