import 'package:flutter/material.dart';
import 'package:solution_champs/source/widgets/date_item.dart';

class DateWidget extends StatefulWidget {
  DateWidget({Key key}) : super(key: key);

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      height: 161,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(109, 79, 224, 0.86),
          Color.fromRGBO(227, 157, 147, 0.67),

          Color.fromRGBO(255, 224, 139, 0.36),
        ],
      )),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          DateItem(),
          DateItem(),
          DateItem(),
          DateItem(),
          DateItem(),
        ],
      ),
    );
  }
}
