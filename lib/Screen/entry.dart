import 'package:employee_sidenav_app/Screen/mydrawer.dart';
import 'package:flutter/material.dart';

class Entry extends StatefulWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {

  TextEditingController name=TextEditingController();
  TextEditingController code=TextEditingController();
  TextEditingController design=TextEditingController();
  TextEditingController salary=TextEditingController();

  List EName=[];
  List ECode=[];
  List EDesign=[];
  List ESalary=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      hintText: "Employee Name",
                      labelText: "Employee Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: code,
                  decoration: InputDecoration(
                      hintText: "Employee Code",
                      labelText: "Employee Code",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: design,
                  decoration: InputDecoration(
                      hintText: "Employee Designation",
                      labelText: "Employee Designation",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: salary,
                  decoration: InputDecoration(
                      hintText: "Employee Salary",
                      labelText: "Employee Salary",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ))
                      ),
                      onPressed: (){
                        var getName=name.text;
                        var getCode=code.text;
                        var getDesign=design.text;
                        var getSalary=salary.text;

                        setState(() {
                          EName.add(getName);
                          ECode.add(getCode);
                          EDesign.add(getDesign);
                          ESalary.add(getSalary);
                        });

                      }, child: Text("Submit")),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: EName.length==null ? 0:EName.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  EName.removeAt(index);
                                  ECode.removeAt(index);
                                  EDesign.removeAt(index);
                                  ESalary.removeAt(index);
                                });

                              },
                              child: Icon(Icons.delete)),
                          title: Text("Name: "+EName[index]),
                          subtitle: Text("Employee Code:"+ECode[index]+"\n"+"Employee Designation: "+EDesign[index]+"\n"+"Employee Salary: "+ESalary[index]),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
