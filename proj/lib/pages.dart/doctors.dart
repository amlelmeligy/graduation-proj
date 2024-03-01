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
        color: Color.fromARGB(255, 250, 244, 244),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 15),
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: aboutDoctors(
                img: "1.png",
                name: "Dr. Ahmed Yassin",
                title: "Psychiatric and neurological consultant"),
          ),
          Container(
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: aboutDoctors(
                img: "11.png",
                name: "Dr. Rania Samir",
                title: "Psychiatric and neurological consultant"),
          ),
          Container(
            child: aboutDoctors(
                img: "3.png",
                name: "Dr. Karim Mohamed",
                title: "Psychiatric and neurological consultant"),
          ),
          Container(
            child: aboutDoctors(
                img: "1.png",
                name: "Dr. Khaled Ramy",
                title: "Psychiatric and neurological consultant"),
          ),
          Container(
            child: aboutDoctors(
                img: "3.png",
                name: "Dr. Ahmed Murad",
                title: "Psychiatric and neurological consultant"),
          ),
          Container(
            child: aboutDoctors(
                img: "1.png",
                name: "Dr. Aliaa Hussain",
                title: "Psychiatric and neurological consultant"),
          ),
          Container(
            child: aboutDoctors(
                img: "3.png",
                name: "Dr.Mohamed",
                title: "Psychiatric and neurological consultant"),
          )
        ]),
      ),
    );
  }
}
