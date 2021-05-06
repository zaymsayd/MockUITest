import 'package:flutter/material.dart';
import 'package:solution_champs/source/screens/home_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primaryColor: Color(0xFF6D4FE0)),
      home: HomeScreen()
    );
  }
}