import 'package:flutter/material.dart';
import 'package:solution_champs/source/widgets/appointment_item.dart';

class Appoinments extends StatefulWidget {
  Appoinments({Key key}) : super(key: key);

  @override
  _AppoinmentsState createState() => _AppoinmentsState();
}

class _AppoinmentsState extends State<Appoinments> {
  List<Widget> _tabs = [
    Tab(child: Text("Upcoming")),
    Tab(child: Text("History"))
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: _tabs.length,
        child: Column(
          children: [
            TabBar(
              tabs: _tabs,
              labelColor: Colors.black,
              indicatorColor: Theme.of(context).primaryColor,
            ),
            Container(
              height: (MediaQuery.of(context).size.height / 100) * 65,
              child: TabBarView(children: [_upcoming(), _history()]),
            )
          ],
        ),
      ),
    );
  }

  Widget _upcoming() {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
          AppoinmentItem(),
        ],
      ),
    );
  }

  Widget _history() {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppoinmentItem(isNext: false,),
          AppoinmentItem(isNext: false,),
          AppoinmentItem(isNext: false,),
          AppoinmentItem(isNext: false,)
        ],
      ),
    );
  }
}
