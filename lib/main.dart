import 'package:flutter/material.dart';

import 'To_Do_Screen.dart';

void main() {
  runApp(
      const Mmain()
  );
}

class Mmain extends StatelessWidget {
  const Mmain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF3551a1),
        backgroundColor: Color(0xFF3551a1),
      ),
    );
  }
}


