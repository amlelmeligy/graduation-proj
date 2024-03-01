import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proj/pages.dart/appointment.dart';

class aboutDoctors extends StatelessWidget {
  final String img;
  final String name;
  final String title;

  // final image;
  const aboutDoctors({
    super.key,
    required this.img,
    required this.name,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                  width: 120, height: 150, child: Image.asset("images/$img"))
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 5),
                width: 200,
                child: Text(
                  "$name",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                width: 200,
                child: Text(
                  "$title",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 160, top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow[800],
                    ),
                    Text("5.0")
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Color.fromARGB(255, 61, 125, 177),
                    size: 20,
                  ),
                ),
                Container(
                  height: 40,
                ),
                Container(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => appointment()),
                      );
                    },
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 61, 125, 177),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
