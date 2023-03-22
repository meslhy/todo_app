import 'package:flutter/material.dart';
import 'package:todo/layout/todo_home_screen.dart';
import 'package:todo/models/login/login_screen.dart';

void main() {
  runApp( MyApp());
}



class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: todoHomeScreen(),
    );
  }
}