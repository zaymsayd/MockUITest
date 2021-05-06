import 'package:flutter/material.dart';
import 'package:solution_champs/source/widgets/appointments_tab.dart';
import 'package:solution_champs/source/widgets/date_widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Morning, Jony Ive!"),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          DateWidget(),
          Appoinments(),
        ],
      ),
    );
  }
}
