import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class analytics extends StatefulWidget {
  const analytics({super.key});

  @override
  State<analytics> createState() => _analyticsState();
}

class _analyticsState extends State<analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(11),
        child: ListView(
          children: [
            Container(
              // padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "User Analytics",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 17),
              child: Text(
                "Overview",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 115,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 48, 92, 127), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 17),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 125,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 48, 92, 127), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "8",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 17),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 115,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 48, 92, 127), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Text(
                          "Pending",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Text(
                "Productivity",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5, bottom: 30),
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      width: 120,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 48, 92, 127),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Weekly",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(width: 10),
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      width: 120,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 123, 122, 122),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Monthly",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(width: 10),
                  Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                      width: 120,
                      height: 65,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 123, 122, 122),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Yearly",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
            //////////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Tasks",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 62, 123, 173),
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Image.asset("images/Group 654.png"),
                  Container(
                    padding: EdgeInsets.only(left: 60, top: 25),
                    child: Column(
                      children: [
                        Container(
                          width: 110,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 62, 123, 173),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("This Week"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                FontAwesomeIcons.shield,
                                size: 15,
                                color: Color.fromARGB(255, 62, 123, 173),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, right: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Completed",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, right: 40),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Color.fromARGB(255, 104, 118, 222),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "On Hold",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, right: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Color.fromARGB(255, 31, 150, 168),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "On Progress",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10, right: 40),
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Color.fromARGB(255, 167, 77, 32),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Pending",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ///////////////////////////////////////////////////////////////////
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 62, 123, 173)),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset("images/Group1.png"),
            )
          ],
        ),
      ),
    );
  }
}
