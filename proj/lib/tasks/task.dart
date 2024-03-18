import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

DateTime today = DateTime.now();

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(210, 219, 220, 0.612),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView(children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 15),
                child: Text(
                  "Your Tasks",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(121, 152, 155, 0.612),
              borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.only(top: 15, left: 30, right: 30),
          child: TableCalendar(
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2025, 12, 31),
          ),
        ),
///////////////////////////////////////////////////////////////////////
        Container()
      ]),
    ));
  }
}
