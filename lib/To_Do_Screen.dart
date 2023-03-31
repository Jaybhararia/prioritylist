import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prioritylist/Add_New_Task.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
                context: context, builder: (context) => SingleChildScrollView(child: Container(
                child: AddNewTask(),
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                    'Tasks',
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
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                    Cards(),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),

    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

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
          title: Text('This is an example'),
          leading: Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Color(0xFFea06ff),
            ),
            child: Checkbox(
              shape: CircleBorder(),
              activeColor: Color(0xFFea06ff),
              value: false,
              onChanged: (bool? value) {
                value = true;
              },
            ),
          ),

        ),
      ),
    );
  }
}




























// Padding(
// padding: EdgeInsets.all(20),
// child: Container(
// height: 60,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(20)),
// color: Color(0xFF051857)
// ),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Expanded(
// flex: 1,
// child: Icon(
// Icons.radio_button_unchecked,
// color: Color(0xFFea06ff),
// ),
// ),
// Expanded(
// flex: 5,
// child: Text(
// 'Hello This is Sample',
// style: TextStyle(
//
// ),
//
// ),
// )
// ],
// ),
// ),
// ),
//
//
// Row(
//   children: [
//     Expanded(
//         flex: 1,
//         child: Icon(Icons.radio_button_unchecked)
//     ),
//     Expanded(
//       flex: 5,
//       child: Container(
//
//         child: TextField(
//           obscureText: true,
//           // cursorColor: const Color(0xFF39304d),
//           onChanged: (value){
//             // password = value;
//           },
//           decoration: InputDecoration(
//               labelText: 'Password',
//               focusColor: const Color(0xFF39304d),
//               hintText: 'Enter Your Password',
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//                 borderSide: const BorderSide(
//                   color: Color(0xFF201b31),
//                   width: 1,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide(
//                     color: const Color(0xFF39304d),
//                     width: 1,
//                   )
//               )
//           ),
//         ),
//       ),
//     ),
//   ],
// ),