import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prioritylist/Add_New_Task.dart';
import 'package:prioritylist/Task_Data.dart';
import 'package:provider/provider.dart';
import 'TaskList.dart';
import 'Tasks.dart';
import 'package:prioritylist/Size_Config.dart';

class MyApp extends StatelessWidget {


  // var size = SizeConfig();

  // List<Tasks> tasks = [
  //   Tasks('Code the current part', false),
  //   Tasks('Code the full part' , false),
  // ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                context: context, builder: (context) => SingleChildScrollView(child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNewTask(),
            ))
            );
          },
          backgroundColor: Color(0xFFea06ff),
          child: Icon(
              Icons.add,
            color: CupertinoColors.white,
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          leading: Icon(
              Icons.list,
            color: Color(0xFF97b4ff),
          ),
          backgroundColor: Color(0xFF3551a1),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF3551a1),

              child: Column(
                children: [
                  Center(
                    child: Text(
                      'So,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'What Are You Planning Today?!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '${Provider.of<Taskdata>(context).tasks.length} Tasks',
                    // color: Color(0xFF97b4ff)
                  textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xFF97b4ff)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFF3551a1),
                child: TaskTile(),
              ),
            ),
          ],
        ),

      ),

    );
  }
}



