import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'To_Do_Screen.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color : Color(0xFF19254b),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF4c1e9c),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                  'Add New Task',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF9ACD32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 30 , bottom: 30),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(Icons.task)
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(

                        child: TextField(
                          autofocus: true,
                            autocorrect: true,
                          // obscureText: true,
                          // cursorColor: const Color(0xFF39304d),
                          onChanged: (value){

                          },
                          decoration: InputDecoration(
                              labelText: 'New Task',
                              focusColor: Color(0xFFea06ff),
                              hintText: 'Enter New Task Here',
                              labelStyle: TextStyle(
                                color: Color(0xFFFFFF00)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFFF00),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Color(0xFFea06ff),
                                    width: 1,
                                  )
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Expanded(
                  child: Material(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5,
                    child: MaterialButton(
                      onPressed: () {
                      },

                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Color(0xFF1e1a31),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
