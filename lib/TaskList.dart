import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prioritylist/Task_Data.dart';
import 'package:provider/provider.dart';

import 'Cards.dart';
import 'Tasks.dart';

class TaskTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskdata, child){
        return ListView.builder(itemBuilder: (context,index){
          return Cards(ischecked : taskdata.tasks[index].isDone, tasktitle : taskdata.tasks[index].name,
              checkboxcallback : (checkboxstate){
                taskdata.update(taskdata.tasks[index]);
              }, longpresscallback: (){
            taskdata.delete(taskdata.tasks[index]);
            },);
        }, itemCount: taskdata.tasks.length,);
      },
    );
  }
}