import 'dart:ui';

import 'package:flutter/material.dart';

class DateItem extends StatelessWidget {
  const DateItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDialogue(context);
      },
      child: Container(
        height: 67,
        width: 243,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                _date(),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    "Track your symptoms",
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _date({String month, String date}) {
    return Container(
      height: 70,
      width: 60,
      child: Card(
        color: Color(0xffe39d93),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MAY",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "02",
              style: TextStyle(fontSize: 27, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  _showDialogue(BuildContext context) {
    return showDialog(context: context, builder: (context) => dateDialogue(context));
  }

  Widget dateDialogue(BuildContext context) {
    return Stack(
      children: [
        Dialog(
          child: Container(
            width: 300,
            height: 335,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Text(
                  "Track your Symptoms",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                
              ],
            ),
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height / 100) * 22,
          left: (MediaQuery.of(context).size.width / 100) * 40,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffe39d93),
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Text(
                    "MAY",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "02",
                    style: TextStyle(fontSize: 38, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
