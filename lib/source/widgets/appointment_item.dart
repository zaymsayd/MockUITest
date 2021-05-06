import 'package:flutter/material.dart';

class AppoinmentItem extends StatelessWidget {
  final bool isNext;

  AppoinmentItem({Key key, this.isNext = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5))),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(flex: 2, child: _date(context,isNext: isNext)),
                  Expanded(
                      flex: 5,
                      child: Text(
                        "Appointment",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            dataRow(context, label: "Patient", value: "Jony Ive",isNext: isNext),
            dataRow(context, label: "Hospital", value: "Hospiatl Name Here",isNext: isNext),
            dataRow(context, label: "Location", value: "New York",isNext: isNext),
            dataRow(context, label: "Email", value: "jonyive@outlook.com",isNext: isNext),
          ],
        ),
      ),
    );
  }

  Widget dataRow(BuildContext context,
      {String label = "", String value = "", bool isNext = true}) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            color: isNext
                ? Theme.of(context).primaryColor.withOpacity(0.1)
                : Colors.grey.withOpacity(0.1),
            // padding: EdgeInsets.symmetric(vertical: 5.0),
            width: 110,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Text(
            label,
            textAlign: TextAlign.start,
            style: TextStyle(
                color:
                    isNext ? Theme.of(context).primaryColor : Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              value,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }

  Widget _date(BuildContext context,
      {String month = "", String date = "", bool isNext = true}) {
    return Card(
      margin: EdgeInsets.all(10),
      color: isNext ? Theme.of(context).primaryColor : Colors.grey[500],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "MAY",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "02",
              style: TextStyle(color: Colors.white, fontSize: 27),
            )
          ],
        ),
      ),
    );
  }
}
