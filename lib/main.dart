import 'package:flutter/material.dart';
import 'ekran1.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Colors.lightBlue,
        scaffoldBackgroundColor:Colors.lightBlue,
      ),
     home: ekran1(),
    );
  }
}


