import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class appointment extends StatefulWidget {
  const appointment({super.key});

  @override
  State<appointment> createState() => _appointmentState();
}

DateTime today = DateTime.now();

class _appointmentState extends State<appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 25, right: 25),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 25),
              child: Text(
                "Book an Appointment ",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.612),
                  borderRadius: BorderRadius.circular(20)),
              child: TableCalendar(
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2025, 12, 31),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available time Slot",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
