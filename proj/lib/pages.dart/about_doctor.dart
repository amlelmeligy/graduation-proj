import 'package:flutter/material.dart';

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
    return Expanded(
        child: Row(
      children: [
        Column(
          children: [
            Container(
                width: 160, height: 170, child: Image.asset("images/$img"))
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
                style: TextStyle(fontSize: 10),
              ),
            ),
            Container(
              width: 200,
              padding: EdgeInsets.only(right: 130, top: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Color.fromARGB(255, 61, 125, 177),
                ),
                onPressed: () {},
                child: Text("Book"),
              ),
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.ac_unit),
            Container(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  Text("5.0")
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
