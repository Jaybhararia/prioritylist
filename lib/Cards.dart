import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  bool ischecked;
  String tasktitle;
  ValueChanged<bool?> checkboxcallback;
  var longpresscallback;

  Cards({required this.ischecked, required this.tasktitle, required this.checkboxcallback, required this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFF051857)
        ),
        child: ListTile(
          onLongPress: longpresscallback,
          title: Text( tasktitle ,
          style: TextStyle(
              decoration : ischecked ? TextDecoration.lineThrough : null)),
          leading: TaskCheckBox(ischecked: ischecked,togglecheckbox: checkboxcallback)
          ),

        ),

    );
  }
}

class TaskCheckBox extends StatelessWidget {

  bool ischecked;
  final ValueChanged<bool?> togglecheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      fillColor: MaterialStateColor.resolveWith(
            (Set<MaterialState> states) {
          return Color(0xFFea06ff);
        },
      ),
      shape: CircleBorder(),
      activeColor: Color(0xFFea06ff),
      value: ischecked,
      onChanged: togglecheckbox,
    );
  }

  TaskCheckBox({required this.ischecked, required this.togglecheckbox});
}

// (bool? value) {
//         setState(() {
//           ischecked = true;
//         });
//       }
