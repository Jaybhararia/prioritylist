import 'package:flutter/material.dart';
import 'package:prioritylist/Task_Data.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Task_Data.dart';
import 'To_Do_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstRun = prefs.getBool('firstRun') ?? true;
  if (isFirstRun) {
    await prefs.setBool('firstRun', false);

  }

  runApp(Mmain());
}

class Mmain extends StatelessWidget {
  const Mmain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Taskdata()..loadTasks(),
      child: MaterialApp(
        home: MyApp(),
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF3551a1),
          backgroundColor: Color(0xFF3551a1),
        ),
      ),
    );
  }
}





