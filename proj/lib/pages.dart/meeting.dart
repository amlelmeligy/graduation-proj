import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class meeting extends StatefulWidget {
  const meeting({super.key});

  @override
  State<meeting> createState() => _meetingState();
}

class _meetingState extends State<meeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 182, 216, 245),
          image: DecorationImage(
            image: AssetImage("images/1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 580, right: 50, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Dr.Ahmed",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 5,
                      ),
                      Text(
                        "10:00",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 100,
                    height: 100,
                    child:
                        Expanded(child: Image.asset("images/image1 (3).jpg")))
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                ),
                Container(width: 30),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(33, 253, 253, 253),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.videocam,
                    size: 30,
                  ),
                ),
                Container(width: 30),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(Icons.call),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
