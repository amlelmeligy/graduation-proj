import 'package:flutter/material.dart';
import 'package:proj/pages.dart/about_doctor.dart';

class doctors extends StatefulWidget {
  const doctors({super.key});

  @override
  State<doctors> createState() => _doctorsState();
}

class _doctorsState extends State<doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Center(
              child: Text(
                "All Doctors",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 80,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Search a Doctor ",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(
                    Icons.mic_rounded,
                    size: 30,
                  )),
            ),
          ),
////
          aboutDoctors(
              img: "1.png",
              name: "Dr.Ahmed",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment."),

          aboutDoctors(
              img: "2.png",
              name: "Dr.Rania",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment."),
          aboutDoctors(
              img: "3.png",
              name: "Dr.Karim",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment."),
          aboutDoctors(
              img: "1.png",
              name: "Dr.Khaled",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment."),
          aboutDoctors(
              img: "3.png",
              name: "Dr.Yassin",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment."),
          aboutDoctors(
              img: "1.png",
              name: "Dr.Hassan",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment."),
          aboutDoctors(
              img: "3.png",
              name: "Dr.Mohamed",
              title:
                  "ADHD doctors typically have a background in psychiatry, psychology, or pediatrics, and they have received additional training in ADHD diagnosis and treatment.")
        ]),
      ),
    );
  }
}
